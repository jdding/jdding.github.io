#!/bin/bash
# Script to create placeholder logos if they don't exist

IMAGES_DIR="/Users/timber/Documents/jdding.github.io/assets/images"

# Create images directory if it doesn't exist
mkdir -p "$IMAGES_DIR"

# Create placeholder logos if they don't exist
PLACEHOLDER_LOGOS=(
  "fudan-university-logo.png"
  "tongji-university-logo.png"
  "huawei-logo.png"
  "alibaba-logo.png"
  "duke-university-logo.png"
  "tsinghua-university-logo.png"
  "nanjing-university-logo.png"
  "trinity-college-dublin-logo.png"
)

cd "$IMAGES_DIR"

for logo in "${PLACEHOLDER_LOGOS[@]}"; do
  if [ ! -f "$logo" ]; then
    echo "Creating placeholder for $logo"
    # Create a simple placeholder image using ImageMagick if available
    if command -v convert &> /dev/null; then
      convert -size 100x100 xc:#3498db -gravity center -fill white -pointsize 24 -annotate 0 "${logo:0:4}" "$logo"
    else
      # Create a simple text file as placeholder
      echo "Logo placeholder: $logo" > "$logo.txt"
      echo "Please replace $logo.txt with actual logo image"
    fi
  fi
done