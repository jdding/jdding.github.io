#!/bin/bash
# Script to convert non-PNG logos to PNG and add new university logos

IMAGES_DIR="/Users/timber/Documents/jdding.github.io/assets/images"
cd "$IMAGES_DIR"

# Convert JPEG to PNG
if [ -f "fudan-university-logo.jpeg" ]; then
  if command -v convert &> /dev/null; then
    convert "fudan-university-logo.jpeg" "fudan-university-logo.png"
    echo "Converted fudan-university-logo.jpeg to PNG"
  else
    echo "ImageMagick not available, keeping original file"
  fi
fi

# Convert SVG to PNG (if ImageMagick is available)
for svg_file in *.svg; do
  if [ -f "$svg_file" ]; then
    png_name="${svg_file%.svg}.png"
    if command -v convert &> /dev/null; then
      convert -resize 200x200 "$svg_file" "$png_name"
      echo "Converted $svg_file to $png_name"
    else
      echo "ImageMagick not available, skipping conversion of $svg_file"
    fi
  fi
done

# Convert JPG to PNG
if [ -f "trinity-college-dublin-logo.jpg" ]; then
  if command -v convert &> /dev/null; then
    convert "trinity-college-dublin-logo.jpg" "trinity-college-dublin-logo.png"
    echo "Converted trinity-college-dublin-logo.jpg to PNG"
  else
    echo "ImageMagick not available, keeping original file"
  fi
fi

# Create placeholders for new universities if they don't exist
NEW_LOGOS=(
  "hong-kong-baptist-university-logo.png"
  "university-of-houston-logo.png"
)

for logo in "${NEW_LOGOS[@]}"; do
  if [ ! -f "$logo" ]; then
    echo "Creating placeholder for $logo"
    if command -v convert &> /dev/null; then
      convert -size 100x100 xc:#3498db -gravity center -fill white -pointsize 24 -annotate 0 "${logo:0:4}" "$logo"
    else
      # Create a simple text file as placeholder
      echo "Logo placeholder: $logo" > "$logo.txt"
      echo "Please replace $logo.txt with actual logo image"
    fi
  fi
done

# Clean up txt files if corresponding PNG exists
for txt_file in *.txt; do
  if [ -f "$txt_file" ]; then
    png_name=$(basename "$txt_file" .txt.png)
    if [ -n "$png_name" ] && [ -f "${png_name}.png" ]; then
      rm "$txt_file"
      echo "Removed $txt_file as PNG exists"
    fi
  fi
done