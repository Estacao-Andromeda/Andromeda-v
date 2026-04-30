using Content.Server.UserInterface;
using Content.Shared.Canvas;
using Robust.Server.GameObjects;
using Robust.Shared.Audio;

namespace Content.Server.Canvas
{
    /// <summary>
    /// Server-side component for canvas entities.
    /// Extends the shared component with server-specific properties like sound effects and UI settings.
    /// </summary>
    [RegisterComponent]
    public sealed partial class CanvasComponent : SharedCanvasComponent
    {
        /// <summary>
        /// Sound played when using the canvas.
        /// </summary>
        [DataField("useSound")] public SoundSpecifier? UseSound;

        /// <summary>
        /// Whether the color can be selected by the user (e.g., for special canvas types).
        /// </summary>
        [ViewVariables(VVAccess.ReadWrite)]
        [DataField("selectableColor")]
        public bool SelectableColor { get; set; }

        /// <summary>
        /// Whether to delete the canvas when it's used up (currently unused).
        /// </summary>
        [ViewVariables(VVAccess.ReadWrite)]
        [DataField("deleteEmpty")]
        public bool DeleteEmpty = true;
    }
}
