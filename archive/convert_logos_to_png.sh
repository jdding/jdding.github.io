#!/bin/bash
# Script to convert non-PNG logos to PNG and update file references in the website

IMAGES_DIR="/Users/timber/Documents/jdding.github.io/assets/images"
cd "$IMAGES_DIR"

echo "Converting non-PNG logos to PNG format..."

# Convert JPEG to PNG
if [ -f "fudan-university-logo.jpeg" ]; then
  if command -v sips &> /dev/null; then
    sips -s format png "fudan-university-logo.jpeg" --out "fudan-university-logo.png"
    echo "Converted fudan-university-logo.jpeg to PNG"
  elif command -v convert &> /dev/null; then
    convert "fudan-university-logo.jpeg" "fudan-university-logo.png"
    echo "Converted fudan-university-logo.jpeg to PNG"
  else
    echo "Warning: No image conversion tool found (sips or convert). Skipping fudan-university-logo.jpeg conversion."
  fi
fi

# Convert SVG to PNG (if ImageMagick is available)
for svg_file in *.svg; do
  if [ -f "$svg_file" ]; then
    png_name="${svg_file%.svg}.png"
    if command -v convert &> /dev/null; then
      convert -density 150 "$svg_file" "$png_name"
      echo "Converted $svg_file to $png_name"
    else
      echo "Warning: ImageMagick not available, skipping conversion of $svg_file"
    fi
  fi
done

# Convert JPG to PNG
if [ -f "trinity-college-dublin-logo.jpg" ]; then
  if command -v sips &> /dev/null; then
    sips -s format png "trinity-college-dublin-logo.jpg" --out "trinity-college-dublin-logo.png"
    echo "Converted trinity-college-dublin-logo.jpg to PNG"
  elif command -v convert &> /dev/null; then
    convert "trinity-college-dublin-logo.jpg" "trinity-college-dublin-logo.png"
    echo "Converted trinity-college-dublin-logo.jpg to PNG"
  else
    echo "Warning: No image conversion tool found (sips or convert). Skipping trinity-college-dublin-logo.jpg conversion."
  fi
fi

# Remove old format files after conversion
if [ -f "fudan-university-logo.png" ] && [ -f "fudan-university-logo.jpeg" ]; then
  rm "fudan-university-logo.jpeg"
  echo "Removed original fudan-university-logo.jpeg"
fi

if [ -f "trinity-college-dublin-logo.png" ] && [ -f "trinity-college-dublin-logo.jpg" ]; then
  rm "trinity-college-dublin-logo.jpg"
  echo "Removed original trinity-college-dublin-logo.jpg"
fi

# Process SVG files if converted
if [ -f "nanjing-university-logo.png" ] && [ -f "nanjing-university-logo.svg" ]; then
  rm "nanjing-university-logo.svg"
  echo "Removed original nanjing-university-logo.svg"
fi

if [ -f "tongji-university-logo.png" ] && [ -f "tongji-university-logo.svg" ]; then
  rm "tongji-university-logo.svg"
  echo "Removed original tongji-university-logo.svg"
fi

echo "Conversion process completed."