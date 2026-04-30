using Content.Server.Administration.Logs;
using Content.Server.Nutrition.EntitySystems;
using Content.Server.Popups;
using Content.Shared.Canvas;
using Content.Shared.Database;
using Content.Shared.Decals;
using Content.Shared.Interaction;
using Content.Shared.Interaction.Events;
using Content.Shared.Nutrition.EntitySystems;
using Robust.Server.GameObjects;
using Robust.Shared.Audio;
using Robust.Shared.GameStates;
using Robust.Shared.Player;
using Robust.Shared.Prototypes;
using System.Linq;
using System.Numerics;
using static Content.Shared.Canvas.SharedCanvasComponent;

namespace Content.Server.Canvas
{
    /// <summary>
    /// Server-side system for handling canvas interactions, UI messages, and state management.
    /// Processes user inputs, updates canvas state, and manages finalization of artworks.
    /// </summary>
    public sealed class CanvasSystem : SharedCanvasSystem
    {
        [Dependency] private readonly IAdminLogManager _adminLogger = default!;
        [Dependency] private readonly IPrototypeManager _prototypeManager = default!;
        [Dependency] private readonly PopupSystem _popup = default!;
        [Dependency] private readonly UserInterfaceSystem _uiSystem = default!;

        /// <summary>
        /// Initializes the canvas system by subscribing to various events.
        /// </summary>
        public override void Initialize()
        {
            base.Initialize();
            SubscribeLocalEvent<CanvasComponent, ComponentInit>(OnCanvasInit);
            SubscribeLocalEvent<CanvasComponent, CanvasSelectMessage>(OnCanvasBoundUI);
            SubscribeLocalEvent<CanvasComponent, CanvasFinalizeMessage>(OnCanvasBoundFinalize);
            SubscribeLocalEvent<CanvasComponent, CanvasSignatureMessage>(OnCanvasBoundSignature);
            SubscribeLocalEvent<CanvasComponent, CanvasColorMessage>(OnCanvasBoundUIColor);
            SubscribeLocalEvent<CanvasComponent, CanvasHeightMessage>(OnCanvasBoundHeight);
            SubscribeLocalEvent<CanvasComponent, CanvasWidthMessage>(OnCanvasBoundWidth);
            SubscribeLocalEvent<CanvasComponent, UseInHandEvent>(OnCanvasUse, before: new[] { typeof(IngestionSystem) });
            SubscribeLocalEvent<CanvasComponent, AfterInteractEvent>(OnCanvasAfterInteract, after: new[] { typeof(IngestionSystem) });
            SubscribeLocalEvent<CanvasComponent, DroppedEvent>(OnCanvasDropped);
            SubscribeLocalEvent<CanvasComponent, ComponentGetState>(OnCanvasGetState);
        }

        /// <summary>
        /// Provides the component state for network synchronization.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The component state arguments.</param>
        private static void OnCanvasGetState(EntityUid uid, CanvasComponent component, ref ComponentGetState args)
        {
            args.State = new CanvasComponentState(component.Color, component.SelectedState, component.PaintingCode, component.Height, component.Width, component.Artist, component.SizeMultiplier, component.Signature);
        }

        /// <summary>
        /// Handles after-interaction events, marking the component as dirty for state sync.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The interaction event arguments.</param>
        private void OnCanvasAfterInteract(EntityUid uid, CanvasComponent component, AfterInteractEvent args)
        {
            if (args.Handled || !args.CanReach)
                return;
            Dirty(uid, component);

            _uiSystem.ServerSendUiMessage(uid, SharedCanvasComponent.CanvasUiKey.Key, new CanvasUsedMessage(component.SelectedState));
        }

        /// <summary>
        /// Handles use-in-hand events to open the canvas UI.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The use event arguments.</param>
        private void OnCanvasUse(EntityUid uid, CanvasComponent component, UseInHandEvent args)
        {
            // Open Canvas window if neccessary.
            if (args.Handled)
                return;

            if (!_uiSystem.HasUi(uid, SharedCanvasComponent.CanvasUiKey.Key))
            {
                return;
            }

            _uiSystem.TryToggleUi(uid, SharedCanvasComponent.CanvasUiKey.Key, args.User);

            _uiSystem.SetUiState(uid, SharedCanvasComponent.CanvasUiKey.Key, new CanvasBoundUserInterfaceState(component.SelectedState, component.PaintingCode, component.Color, component.Height, component.Width, component.Artist, component.Signature));
            args.Handled = true;
        }

        /// <summary>
        /// Handles canvas selection messages from the client.
        /// Updates the painting code and selected state.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The selection message arguments.</param>
        private void OnCanvasBoundUI(EntityUid uid, CanvasComponent component, CanvasSelectMessage args)
        {

            component.SelectedState = args.State;
            component.PaintingCode = args.State;
            Dirty(uid, component);
        }

        /// <summary>
        /// Handles canvas finalization messages from the client.
        /// Sets the artist name and marks the component as dirty.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The finalize message arguments.</param>
        private void OnCanvasBoundFinalize(EntityUid uid, CanvasComponent component, CanvasFinalizeMessage args)
        {
            Logger.Info($"Canvas: Finalizado {args.State}.");
            component.Artist = args.State;
            Dirty(uid, component);
        }

        /// <summary>
        /// Handles signature messages from the client.
        /// Updates the signature on the component.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The signature message arguments.</param>
        private void OnCanvasBoundSignature(EntityUid uid, CanvasComponent component, CanvasSignatureMessage args)
        {
            component.Signature = args.Signature;
            Dirty(uid, component);
        }

        /// <summary>
        /// Handles color selection messages from the client.
        /// Updates the color if selectable.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The color message arguments.</param>
        private void OnCanvasBoundUIColor(EntityUid uid, CanvasComponent component, CanvasColorMessage args)
        {
            // you still need to ensure that the given color is a valid color
            if (!component.SelectableColor || args.Color == component.Color)
                return;

            component.Color = args.Color;
            Dirty(uid, component);

        }

        /// <summary>
        /// Handles height resize messages from the client.
        /// Updates the canvas height.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The height message arguments.</param>
        private void OnCanvasBoundHeight(EntityUid uid, CanvasComponent component, CanvasHeightMessage args)
        {
            component.Height = args.Height;
            Dirty(uid, component);
        }

        /// <summary>
        /// Handles width resize messages from the client.
        /// Updates the canvas width.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The width message arguments.</param>
        private void OnCanvasBoundWidth(EntityUid uid, CanvasComponent component, CanvasWidthMessage args)
        {
            component.Width = args.Width;
            Dirty(uid, component);
        }

        /// <summary>
        /// Handles component initialization.
        /// Marks the component as dirty for initial state sync.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The component init arguments.</param>
        private void OnCanvasInit(EntityUid uid, CanvasComponent component, ComponentInit args)
        {
            Dirty(uid, component);
        }

        /// <summary>
        /// Handles canvas drop events.
        /// Closes the UI for the user who dropped it.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="component">The canvas component.</param>
        /// <param name="args">The drop event arguments.</param>
        private void OnCanvasDropped(EntityUid uid, CanvasComponent component, DroppedEvent args)
        {
            // TODO: Use the existing event.
            _uiSystem.CloseUi(uid, SharedCanvasComponent.CanvasUiKey.Key, args.User);
        }

        /// <summary>
        /// Handles canvas depletion (currently unused).
        /// Shows a popup and queues entity deletion.
        /// </summary>
        /// <param name="uid">The entity UID.</param>
        /// <param name="user">The user who used it up.</param>
        private void UseUpCanvas(EntityUid uid, EntityUid user)
        {
            _popup.PopupEntity(Loc.GetString("Canvas-interact-used-up-text", ("owner", uid)), user, user);
            EntityManager.QueueDeleteEntity(uid);
        }
    }
}
