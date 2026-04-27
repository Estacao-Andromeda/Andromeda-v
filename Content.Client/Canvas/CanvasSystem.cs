using Content.Client.Items;
using Content.Client.Message;
using Content.Client.Stylesheets;
using Content.Shared.Canvas;
using Robust.Client.GameObjects;
using Robust.Client.UserInterface;
using Robust.Client.UserInterface.Controls;
using Robust.Shared.GameObjects;
using Robust.Shared.GameStates;
using Robust.Shared.Localization;
using Robust.Shared.Timing;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp;
using static Content.Shared.Canvas.SharedCanvasComponent;
using Color = Robust.Shared.Maths.Color;
using Robust.Client.Graphics;
using System.Globalization;
using System.Linq;

namespace Content.Client.Canvas
{
    /// <summary>
    /// Client-side system for handling canvas rendering and UI updates.
    /// Manages sprite generation from painting codes and status displays.
    /// </summary>
    public sealed class CanvasSystem : SharedCanvasSystem
    {
        /// <summary>
        /// Initializes the canvas system by subscribing to component state changes and setting up status controls.
        /// </summary>
        public override void Initialize()
        {
            base.Initialize();
            SubscribeLocalEvent<CanvasComponent, ComponentHandleState>(OnCanvasHandleState);
            Subs.ItemStatus<CanvasComponent>(ent => new StatusControl(ent));
        }

        /// <summary>
        /// Handles component state updates from the server, updating the canvas component properties and triggering sprite updates.
        /// </summary>
        /// <param name="uid">The entity UID of the canvas.</param>
        /// <param name="component">The canvas component being updated.</param>
        /// <param name="args">The component state arguments containing new state data.</param>
        private void OnCanvasHandleState(EntityUid uid, CanvasComponent component, ref ComponentHandleState args)
        {
            if (args.Current is not CanvasComponentState state) return;

            component.Color = state.Color;
            component.SelectedState = state.State;
            component.PaintingCode = state.PaintingCode;
            component.Height = state.Height;
            component.Width = state.Width;
            component.Artist = state.Artist;
            component.SizeMultiplier = state.SizeMultiplier;
            component.Signature = state.Signature;

            component.UIUpdateNeeded = true;

            if (!string.IsNullOrEmpty(component.Artist))
            {
                UpdateSprite(uid, component.PaintingCode, component.Height, component.Width, component.SizeMultiplier);
            }
        }

        /// <summary>
        /// Updates the sprite texture for the canvas entity based on the painting code.
        /// Generates a dynamic texture from the encoded color data.
        /// </summary>
        /// <param name="uid">The entity UID of the canvas.</param>
        /// <param name="code">The encoded painting code string.</param>
        /// <param name="height">The height of the canvas in pixels.</param>
        /// <param name="width">The width of the canvas in pixels.</param>
        /// <param name="sizeMultiplier">The multiplier for pixel size in the texture.</param>
        public void UpdateSprite(EntityUid uid, string code, int height = 16, int width = 16, int sizeMultiplier = 2)
        {
            Logger.Info($"gerando arte system.");
            if (string.IsNullOrEmpty(code))
                return;
            // Update the sprite or visuals based on the artist
            if (EntityManager.TryGetComponent<SpriteComponent>(uid, out var sprite))
            {
                // Change sprite texture based on artist name
                var texture = GenerateArtistTexture(code, height, width, sizeMultiplier); // Implement this method
                sprite.LayerSetTexture(0, texture); // Assuming layer 0; adjust as needed
            }
        }

        /// <summary>
        /// Generates a texture from the painting code by parsing color segments and creating an image.
        /// </summary>
        /// <param name="code">The encoded painting code string with color segments separated by semicolons.</param>
        /// <param name="height">The height of the canvas in pixels.</param>
        /// <param name="width">The width of the canvas in pixels.</param>
        /// <param name="sizeMultiplier">The multiplier for pixel size in the texture.</param>
        /// <returns>A texture object representing the generated artwork.</returns>
        private Texture GenerateArtistTexture(string code, int height = 16, int width = 16, int sizeMultiplier = 2)
        {
            if (height > 32 || width > 32)
                sizeMultiplier = 1;
            var image = new Image<Rgba32>(width * sizeMultiplier, height * sizeMultiplier);

            // Parse the code string into color segments
            var colorSegments = code.Split(';', StringSplitOptions.RemoveEmptyEntries);

            for (int row = 0; row < height; row++)
            {
                for (int col = 0; col < width; col++)
                {
                    // Calculate the index in the color segments array
                    int index = row * width + col;

                    // Get the color, defaulting to white if the index is out of bounds
                    Color color = index < colorSegments.Length
                        ? ParseColor(colorSegments[index])
                        : Color.White;

                    // Fill the corresponding area in the image
                    for (int x = col * sizeMultiplier; x < (col + 1) * sizeMultiplier; x++)
                    {
                        for (int y = row * sizeMultiplier; y < (row + 1) * sizeMultiplier; y++)
                        {
                            image[x, y] = new Rgba32(color.R, color.G, color.B, color.A);
                        }
                    }
                }
            }

            // Convert the image to a texture
            return Texture.LoadFromImage(image, "DynamicCanvas");
        }

        /// <summary>
        /// Parses a color segment string into a Color object.
        /// Expects format: "R|G|B|A" where each is a float value.
        /// </summary>
        /// <param name="colorSegment">The color segment string to parse.</param>
        /// <returns>The parsed Color object, or white if parsing fails.</returns>
        private Color ParseColor(string colorSegment)
        {
            colorSegment = new string(colorSegment
                .Where(c => !char.IsWhiteSpace(c) && !char.IsControl(c))
                .ToArray());
            // Split the segment into individual color components
            colorSegment = colorSegment.Replace('.', ',');
            var values = colorSegment.Split('|');

            // Validate the number of components
            if (values.Length != 4)
            {
                Logger.ErrorS("canvas", $"Invalid color segment format: '{colorSegment}'");
                return Color.White; // Default to white on error
            }

            // Convert components to float
            if (!TryParseFloat(values[0], out float r) ||
                !TryParseFloat(values[1], out float g) ||
                !TryParseFloat(values[2], out float b) ||
                !TryParseFloat(values[3], out float a))
            {
                Logger.ErrorS("canvas", $"Failed to parse color segment '{colorSegment}'");
                return Color.White; // Default to white on error
            }

            // Return the parsed color
            return new Color(r, g, b, a);
        }

        /// <summary>
        /// Attempts to parse a float value from a string, handling decimal separators and validation.
        /// Clamps the result to the range [0.0, 1.0].
        /// </summary>
        /// <param name="input">The string to parse.</param>
        /// <param name="result">The parsed float value.</param>
        /// <returns>True if parsing succeeded, false otherwise.</returns>
        private bool TryParseFloat(string input, out float result)
        {
            result = 0.0f;

            if (string.IsNullOrEmpty(input))
                return false;

            // Replace ',' with '.' if necessary (manual handling of decimal separator)
            input = input.Replace(',', '.');

            // Validate and parse manually
            bool isNegative = false;
            int intPart = 0;
            float fracPart = 0.0f;
            float fracDivisor = 1.0f;
            bool isFraction = false;

            for (int i = 0; i < input.Length; i++)
            {
                char c = input[i];

                if (c == '-' && i == 0)
                {
                    isNegative = true;
                    continue;
                }
                else if (c == '.' && !isFraction)
                {
                    isFraction = true;
                    continue;
                }
                else if (c >= '0' && c <= '9')
                {
                    if (isFraction)
                    {
                        fracDivisor *= 10;
                        fracPart += (c - '0') / fracDivisor;
                    }
                    else
                    {
                        intPart = intPart * 10 + (c - '0');
                    }
                }
                else
                {
                    return false; // Invalid character
                }
            }

            result = intPart + fracPart;
            if (isNegative)
                result = -result;

            // Clamp the value to ensure it is within the range [0.0, 1.0]
            result = MathF.Max(0.0f, MathF.Min(1.0f, result));
            return true;
        }

        /// <summary>
        /// Status control for displaying canvas information in the item status UI.
        /// Shows current color, state, painting code, dimensions, and artist.
        /// </summary>
        private sealed class StatusControl : Control
        {
            private readonly CanvasComponent _parent;
            private readonly RichTextLabel _label;

            /// <summary>
            /// Initializes the status control with the parent canvas component.
            /// </summary>
            /// <param name="parent">The canvas component to display status for.</param>
            public StatusControl(CanvasComponent parent)
            {
                _parent = parent;
                _label = new RichTextLabel { StyleClasses = { StyleNano.StyleClassItemStatus } };
                AddChild(_label);

                parent.UIUpdateNeeded = true;
            }

            /// <summary>
            /// Updates the status display each frame if needed.
            /// </summary>
            /// <param name="args">Frame event arguments.</param>
            protected override void FrameUpdate(FrameEventArgs args)
            {
                base.FrameUpdate(args);

                if (!_parent.UIUpdateNeeded)
                {
                    return;
                }

                _parent.UIUpdateNeeded = false;
                _label.SetMarkup(Robust.Shared.Localization.Loc.GetString("Canvas-drawing-label",
                    ("color", _parent.Color),
                    ("state", _parent.SelectedState),
                    ("paintingcode", _parent.PaintingCode),
                    ("height", _parent.Height),
                    ("width", _parent.Width),
                    ("artist", _parent.Artist)));
            }
        }
    }
}
