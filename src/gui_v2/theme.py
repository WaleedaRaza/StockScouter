"""Bloomberg Terminal-inspired dark theme."""

import customtkinter as ctk


# Bloomberg Terminal Color Palette
COLORS = {
    # Backgrounds
    "bg_primary": "#0A0E27",      # Deep navy/black
    "bg_secondary": "#161B33",    # Slightly lighter
    "bg_tertiary": "#1C2333",     # Panel backgrounds
    "bg_hover": "#2D3548",        # Hover states
    
    # Text
    "text_primary": "#E6E6E6",    # Main text
    "text_secondary": "#8B949E",  # Secondary text
    "text_dim": "#6E7681",        # Dimmed text
    
    # Accent colors
    "accent_green": "#00FF41",    # Matrix green for highlights
    "accent_cyan": "#58A6FF",     # Links, selections
    "accent_amber": "#FFA657",    # Warnings
    
    # Data colors
    "positive": "#3FB950",        # Gains
    "negative": "#F85149",        # Losses
    "neutral": "#8B949E",         # Neutral
    
    # Borders
    "border": "#30363D",
    "border_bright": "#484F58",
}


def apply_bloomberg_theme():
    """Apply Bloomberg Terminal aesthetic to CustomTkinter."""
    ctk.set_appearance_mode("dark")
    
    # Note: CustomTkinter doesn't allow full theme customization
    # but we can set default color theme and use custom colors in widgets
    ctk.set_default_color_theme("blue")
    
    return COLORS


def get_color(key: str) -> str:
    """Get color from palette."""
    return COLORS.get(key, "#FFFFFF")

