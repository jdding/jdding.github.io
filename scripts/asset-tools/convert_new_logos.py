#!/usr/bin/env python3
"""
Convert new logo files to appropriate format and size
"""

import os
from PIL import Image
import sys

def convert_and_resize_image(input_path, output_path, size=(400, 400)):
    """
    Convert image to PNG format and resize to specified dimensions
    """
    with Image.open(input_path) as img:
        # Convert to RGB if necessary (for JPEG files)
        if img.mode in ('RGBA', 'LA', 'P'):
            img = img.convert('RGB')
        
        # Resize image maintaining aspect ratio
        img.thumbnail(size, Image.Resampling.LANCZOS)
        
        # Create a new image with white background if original was transparent
        new_img = Image.new('RGB', size, (255, 255, 255))
        
        # Calculate position to center the image
        x = (size[0] - img.width) // 2
        y = (size[1] - img.height) // 2
        
        # Paste the resized image onto the new image
        new_img.paste(img, (x, y))
        
        # Save as PNG
        new_img.save(output_path, 'PNG', quality=95)
        print(f"Converted {input_path} -> {output_path}")

if __name__ == "__main__":
    # Define logo conversions
    logos = [
        {
            "input": "assets/images/nanjing-university-logo-new.jpeg",
            "output": "assets/images/nanjing-university-logo.png"
        },
        {
            "input": "assets/images/shanghaijiaotong-university-logo-new.png", 
            "output": "assets/images/shanghai-jiao-tong-university-logo.png"
        },
        {
            "input": "assets/images/tongji-university-logo-new.png",
            "output": "assets/images/tongji-university-logo.png"
        }
    ]
    
    for logo in logos:
        if os.path.exists(logo["input"]):
            convert_and_resize_image(logo["input"], logo["output"])
            print(f"Successfully processed {logo['input']}")
        else:
            print(f"Warning: {logo['input']} does not exist")
    
    print("All logo conversions completed!")