"""Placeholder chart component for visual layout."""

import customtkinter as ctk
from typing import Optional, List
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color


class ChartPlaceholder(ctk.CTkFrame):
    """Placeholder chart for layout visualization."""
    
    def __init__(
        self,
        parent,
        title: str = "Chart Title",
        height: int = 300,
        chart_type: str = "line",  # line, bar, scatter, heatmap
        axes_labels: Optional[tuple] = None,
    ):
        super().__init__(
            parent,
            fg_color=get_color("bg_tertiary"),
            corner_radius=0,
            height=height,
        )
        self.pack_propagate(False)
        
        # Title
        title_label = ctk.CTkLabel(
            self,
            text=title,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title_label.pack(pady=(10, 5))
        
        # Chart canvas
        canvas_frame = ctk.CTkFrame(self, fg_color=get_color("bg_primary"))
        canvas_frame.pack(fill="both", expand=True, padx=15, pady=(5, 10))
        
        # Draw mock chart based on type
        if chart_type == "line":
            self._draw_line_chart(canvas_frame, axes_labels)
        elif chart_type == "bar":
            self._draw_bar_chart(canvas_frame, axes_labels)
        elif chart_type == "scatter":
            self._draw_scatter_chart(canvas_frame, axes_labels)
        elif chart_type == "heatmap":
            self._draw_heatmap(canvas_frame, axes_labels)
        else:
            self._draw_placeholder_text(canvas_frame)
    
    def _draw_line_chart(self, parent, axes_labels):
        """Draw a mock line chart."""
        # Simulated line chart with grid
        chart_label = ctk.CTkLabel(
            parent,
            text="📈 Line Chart\n\n[Mock data visualization]\n\nX-axis: " + (axes_labels[0] if axes_labels else "Time") + "\nY-axis: " + (axes_labels[1] if axes_labels else "Value"),
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_dim"),
        )
        chart_label.pack(expand=True)
        
        # Add visual hint
        grid = ctk.CTkLabel(
            parent,
            text="━━━━━━━━━━━━━━━━━━━━\n│    •••╱╲╱•••    │\n│  •••╱    ╲•••  │\n│••╱        ╲••│\n━━━━━━━━━━━━━━━━━━━━",
            font=ctk.CTkFont(family="Consolas", size=8),
            text_color=get_color("accent_cyan"),
        )
        grid.place(relx=0.5, rely=0.5, anchor="center")
    
    def _draw_bar_chart(self, parent, axes_labels):
        """Draw a mock bar chart."""
        chart_label = ctk.CTkLabel(
            parent,
            text="📊 Bar Chart\n\n[Mock data visualization]\n\nCategories: " + (axes_labels[0] if axes_labels else "Groups") + "\nValues: " + (axes_labels[1] if axes_labels else "Magnitude"),
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_dim"),
        )
        chart_label.pack(expand=True)
        
        # Visual bars
        bars = ctk.CTkLabel(
            parent,
            text="█ █ █ █ █ █ █ █\n█ █ █ █ █ █ █ █\n█ █ █ █ █ █ █ █\n█ █ █ █ █ █ █ █\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("accent_green"),
        )
        bars.place(relx=0.5, rely=0.55, anchor="center")
    
    def _draw_scatter_chart(self, parent, axes_labels):
        """Draw a mock scatter plot."""
        chart_label = ctk.CTkLabel(
            parent,
            text="🔵 Scatter Plot\n\n[Mock data visualization]\n\nX: " + (axes_labels[0] if axes_labels else "Variable 1") + "\nY: " + (axes_labels[1] if axes_labels else "Variable 2"),
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_dim"),
        )
        chart_label.pack(expand=True)
        
        # Scattered dots
        dots = ctk.CTkLabel(
            parent,
            text="    •  • •     •\n •    •   •  •  \n  • •   •  •   •\n•   •  •    •  \n ━━━━━━━━━━━━━━",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("accent_cyan"),
        )
        dots.place(relx=0.5, rely=0.55, anchor="center")
    
    def _draw_heatmap(self, parent, axes_labels):
        """Draw a mock heatmap."""
        chart_label = ctk.CTkLabel(
            parent,
            text="🔥 Heatmap\n\n[Mock data visualization]\n\nRows: " + (axes_labels[0] if axes_labels else "Category 1") + "\nCols: " + (axes_labels[1] if axes_labels else "Category 2"),
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_dim"),
        )
        chart_label.pack(expand=True)
        
        # Grid of colors
        grid = ctk.CTkLabel(
            parent,
            text="▓▓▒▒░░░░\n▓▓▒▒░░░░\n▓▓▓▒▒░░░\n▓▓▓▓▒▒░░",
            font=ctk.CTkFont(family="Consolas", size=12),
            text_color=get_color("accent_amber"),
        )
        grid.place(relx=0.5, rely=0.55, anchor="center")
    
    def _draw_placeholder_text(self, parent):
        """Draw generic placeholder."""
        placeholder = ctk.CTkLabel(
            parent,
            text="[Chart Placeholder]\n\nWaiting for data population",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_dim"),
        )
        placeholder.pack(expand=True)


class DataTable(ctk.CTkFrame):
    """Placeholder data table component."""
    
    def __init__(
        self,
        parent,
        title: str = "Data Table",
        columns: List[str] = None,
        rows: int = 5,
    ):
        super().__init__(parent, fg_color=get_color("bg_tertiary"), corner_radius=0)
        
        if columns is None:
            columns = ["Column 1", "Column 2", "Column 3"]
        
        # Title
        title_label = ctk.CTkLabel(
            self,
            text=title,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title_label.pack(pady=(10, 5))
        
        # Table header
        header = ctk.CTkFrame(self, fg_color=get_color("bg_primary"))
        header.pack(fill="x", padx=10, pady=(5, 2))
        
        for col in columns:
            lbl = ctk.CTkLabel(
                header,
                text=col,
                font=ctk.CTkFont(family="Consolas", size=10, weight="bold"),
                text_color=get_color("accent_cyan"),
                width=100,
            )
            lbl.pack(side="left", padx=5, pady=5)
        
        # Mock rows
        for i in range(rows):
            row = ctk.CTkFrame(self, fg_color=get_color("bg_secondary") if i % 2 == 0 else get_color("bg_primary"))
            row.pack(fill="x", padx=10, pady=1)
            
            for j, col in enumerate(columns):
                val = ctk.CTkLabel(
                    row,
                    text=f"data_{i}{j}",
                    font=ctk.CTkFont(family="Consolas", size=9),
                    text_color=get_color("text_dim"),
                    width=100,
                )
                val.pack(side="left", padx=5, pady=3)
        
        # Footer note
        note = ctk.CTkLabel(
            self,
            text="[Mock data - populate with real values]",
            font=ctk.CTkFont(family="Consolas", size=8),
            text_color=get_color("text_dim"),
        )
        note.pack(pady=(5, 10))

