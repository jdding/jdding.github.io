#!/usr/bin/env python3
"""
Script to create better quality logo placeholders for universities
"""

import os
from PIL import Image, ImageDraw, ImageFont
import math

def create_logo_with_text(size, bg_color, text, text_color="white"):
    """
    Create a logo with text in the middle
    """
    img = Image.new('RGB', size, bg_color)
    draw = ImageDraw.Draw(img)
    
    try:
        # Try to use a default font
        font_size = int(size[0] * 0.2)  # Font size relative to image size
        font = ImageFont.truetype("Arial.ttf", font_size) if os.path.exists("/Library/Fonts/Arial.ttf") else ImageFont.load_default()
    except:
        font = ImageFont.load_default()
    
    # Calculate text position (centered)
    bbox = draw.textbbox((0, 0), text, font=font)
    text_width = bbox[2] - bbox[0]
    text_height = bbox[3] - bbox[1]
    x = (size[0] - text_width) // 2
    y = (size[1] - text_height) // 2
    
    draw.text((x, y), text, fill=text_color, font=font)
    return img

def create_gradient_logo(size, start_color, end_color, text, text_color="white"):
    """
    Create a logo with gradient background
    """
    img = Image.new('RGB', size, start_color)
    draw = ImageDraw.Draw(img)
    
    # Create gradient effect
    for y in range(size[1]):
        r = int(start_color[0] + (end_color[0] - start_color[0]) * y / size[1])
        g = int(start_color[1] + (end_color[1] - start_color[1]) * y / size[1])
        b = int(start_color[2] + (end_color[2] - start_color[2]) * y / size[1])
        draw.line([(0, y), (size[0], y)], fill=(r, g, b))
    
    # Add text
    try:
        font_size = int(size[0] * 0.2)
        font = ImageFont.truetype("Arial.ttf", font_size) if os.path.exists("/Library/Fonts/Arial.ttf") else ImageFont.load_default()
    except:
        font = ImageFont.load_default()
    
    bbox = draw.textbbox((0, 0), text, font=font)
    text_width = bbox[2] - bbox[0]
    text_height = bbox[3] - bbox[1]
    x = (size[0] - text_width) // 2
    y = (size[1] - text_height) // 2
    
    draw.text((x, y), text, fill=text_color, font=font)
    return img

if __name__ == "__main__":
    # Define logo specifications
    logos = [
        {
            "filename": "nanjing-university-logo.png",
            "size": (400, 400),
            "bg_color": (25, 55, 104),  # Deep blue
            "text": "NJU",
            "text_color": "white"
        },
        {
            "filename": "shanghai-jiao-tong-university-logo.png", 
            "size": (400, 400),
            "bg_color": (0, 89, 154),  # SJTU blue
            "text": "SJTU",
            "text_color": "white"
        }
    ]
    
    # Create logos
    for logo in logos:
        print(f"Creating {logo['filename']}...")
        
        # Create image
        img = create_logo_with_text(
            logo['size'], 
            logo['bg_color'], 
            logo['text'], 
            logo['text_color']
        )
        
        # Save image
        img.save(logo['filename'])
        print(f"Saved {logo['filename']} with size {img.size}")
        
    print("All logos created successfully!")