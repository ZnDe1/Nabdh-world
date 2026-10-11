#!/bin/bash
# Convert SVG icons to PNG using ImageMagick
# Install: sudo apt install imagemagick (Linux) or brew install imagemagick (Mac)

echo "Converting SVG icons to PNG..."
cd www/icons

for size in 72 96 128 144 152 192 384 512; do
  convert -density ${size} -background none icon-${size}.svg icon-${size}.png
  echo "  ✅ icon-${size}.png"
done

echo "Done! All PNG icons ready."
