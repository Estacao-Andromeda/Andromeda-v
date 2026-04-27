using Content.Shared.Interaction.Events;
using Content.Shared.Interaction;
using Robust.Shared.Prototypes;
using Content.Shared.Popups;
using Robust.Shared.GameObjects;
using static Content.Shared.Canvas.SharedCanvasComponent;
using Robust.Shared.GameStates;

namespace Content.Shared.Canvas
{
    /// <summary>
    /// Shared system for handling canvas-related logic that runs on both client and server.
    /// Manages initialization and shared events for canvas components.
    /// </summary>
    [Virtual]
    public abstract partial class SharedCanvasSystem : EntitySystem
    {
        [Dependency] private readonly IPrototypeManager _prototypeManager = default!;

        /// <summary>
        /// Initializes the canvas system by subscribing to necessary events.
        /// </summary>
        public override void Initialize()
        {
            base.Initialize();
        }
    }
}
