using Content.Client.Canvas.Ui;
using Content.Shared.Canvas;
using Robust.Client.GameObjects;
using Robust.Client.Graphics;
using Robust.Shared.GameObjects;
using Robust.Shared.Maths;
using Robust.Shared.ViewVariables;
using SixLabors.ImageSharp;
using SixLabors.ImageSharp.PixelFormats;
using Color = Robust.Shared.Maths.Color;

namespace Content.Client.Canvas
{
    /// <summary>
    /// Client-side component for canvas entities.
    /// Extends the shared component with client-specific properties like UI update flags.
    /// </summary>
    [RegisterComponent]
    public sealed partial class CanvasComponent : SharedCanvasComponent
    {
        /// <summary>
        /// Flag indicating whether the canvas UI needs to be updated.
        /// Used to trigger UI refreshes when component state changes.
        /// </summary>
        [ViewVariables(VVAccess.ReadWrite)]
        public bool UIUpdateNeeded;
    }
}
