"""Volatility Tab - IV analysis and vol scenarios."""

import customtkinter as ctk
from typing import Dict, Any, TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.pages.analytics import AnalyticsPage


class VolatilityTab(ctk.CTkScrollableFrame):
    """Volatility analysis tab."""
    
    def __init__(self, parent, analytics_page: "AnalyticsPage"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.analytics_page = analytics_page
        self.option_data = None
        self.vol_metrics = None
        
    def load_data(self, option_data: Dict[str, Any]):
        """Load and display volatility data."""
        self.option_data = option_data
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
        
        # Build UI
        self._build_header()
        self._build_iv_info()
        self._build_edge_calculator()
        
    def _build_header(self):
        """Build section header."""
        header = ctk.CTkLabel(
            self,
            text="VOLATILITY ANALYSIS",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_green"),
        )
        header.pack(pady=(10, 20))
        
    def _build_iv_info(self):
        """Build IV information section."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="IMPLIED VOLATILITY (IV)",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        opt = self.option_data
        iv_pct = opt['iv'] * 100 if opt['iv'] else 0
        
        # IV display
        iv_row = ctk.CTkFrame(frame, fg_color=get_color("bg_tertiary"), corner_radius=0)
        iv_row.pack(fill="x", padx=20, pady=10)
        
        iv_label = ctk.CTkLabel(
            iv_row,
            text="Current IV:",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_secondary"),
        )
        iv_label.pack(side="left", padx=15, pady=15)
        
        iv_value = ctk.CTkLabel(
            iv_row,
            text=f"{iv_pct:.2f}%",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_cyan"),
        )
        iv_value.pack(side="left", padx=10)
        
        # Interpretation
        interp = ctk.CTkLabel(
            frame,
            text=f"This means the market expects {opt['ticker']} to move ±{iv_pct:.1f}% over the next year (annualized). "
                 f"For {opt['dte']} days, expected move is ±${opt['underlying_price'] * opt['iv'] * (opt['dte']/365)**0.5:.2f}",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_secondary"),
            wraplength=850,
            justify="left",
        )
        interp.pack(padx=20, pady=(0, 15))
        
        frame.pack(fill="x", padx=20, pady=15)
        
    def _build_edge_calculator(self):
        """Build IV-RV edge calculator."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="IV vs REALIZED VOLATILITY EDGE",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            frame,
            text="If you expect realized volatility to be LOWER than implied volatility, selling this call has positive edge.\n"
                 "Enter your forecast for realized volatility:",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_secondary"),
            wraplength=850,
            justify="left",
        )
        desc.pack(padx=20, pady=10)
        
        # RV input
        input_row = ctk.CTkFrame(frame, fg_color="transparent")
        input_row.pack(pady=10)
        
        rv_label = ctk.CTkLabel(
            input_row,
            text="Expected RV (%):",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_primary"),
        )
        rv_label.pack(side="left", padx=10)
        
        self.rv_entry = ctk.CTkEntry(
            input_row,
            width=100,
            height=35,
            font=ctk.CTkFont(family="Consolas", size=12),
            fg_color=get_color("bg_tertiary"),
        )
        self.rv_entry.insert(0, "25.0")
        self.rv_entry.pack(side="left", padx=10)
        
        calc_btn = ctk.CTkButton(
            input_row,
            text="⚡ CALCULATE EDGE",
            width=150,
            height=35,
            font=ctk.CTkFont(family="Consolas", size=11, weight="bold"),
            command=self._calculate_edge,
            fg_color=get_color("accent_cyan"),
            text_color=get_color("bg_primary"),
        )
        calc_btn.pack(side="left", padx=10)
        
        # Results area
        self.edge_result = ctk.CTkLabel(
            frame,
            text="",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_primary"),
            wraplength=850,
            justify="left",
        )
        self.edge_result.pack(padx=20, pady=15)
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # IV Visualizations
        self._build_iv_charts()
    
    def _build_iv_charts(self):
        """Build IV visualization placeholders."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder
        
        chart_frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        chart_frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            chart_frame,
            text="VOLATILITY VISUALIZATIONS",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        # Two charts
        charts_container = ctk.CTkFrame(chart_frame, fg_color="transparent")
        charts_container.pack(fill="x", padx=20, pady=10)
        charts_container.grid_columnconfigure(0, weight=1)
        charts_container.grid_columnconfigure(1, weight=1)
        
        # IV History
        iv_history = ChartPlaceholder(
            charts_container,
            title="IV History (30 days)",
            height=200,
            chart_type="line",
            axes_labels=("Date", "IV%"),
        )
        iv_history.grid(row=0, column=0, padx=(0, 5), sticky="ew")
        
        # IV Skew
        iv_skew = ChartPlaceholder(
            charts_container,
            title="IV Skew (by Strike)",
            height=200,
            chart_type="scatter",
            axes_labels=("Strike Price", "IV%"),
        )
        iv_skew.grid(row=0, column=1, padx=(5, 0), sticky="ew")
        
        desc = ctk.CTkLabel(
            chart_frame,
            text="IV history shows volatility trends. Skew shows how IV varies across strikes (smile/smirk patterns).",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
        )
        desc.pack(pady=(5, 15))
        
    def _calculate_edge(self):
        """Calculate IV-RV edge."""
        try:
            rv_pct = float(self.rv_entry.get())
            rv = rv_pct / 100.0
            
            opt = self.option_data
            iv = opt['iv']
            edge = iv - rv
            
            if edge > 0:
                color = get_color("accent_green")
                verdict = "POSITIVE EDGE - Good for selling"
            elif edge < 0:
                color = get_color("negative")
                verdict = "NEGATIVE EDGE - Bad for selling"
            else:
                color = get_color("neutral")
                verdict = "NO EDGE - Fair value"
            
            result_text = (
                f"IV-RV Edge: {edge*100:+.2f}% ({edge:+.4f})\n\n"
                f"Implied Vol:    {iv*100:.2f}%\n"
                f"Your RV Forecast: {rv*100:.2f}%\n"
                f"Edge:           {edge*100:+.2f}%\n\n"
                f"Verdict: {verdict}"
            )
            
            self.edge_result.configure(text=result_text, text_color=color)
            
        except ValueError:
            self.edge_result.configure(
                text="❌ Invalid input. Enter a number (e.g., 25.0)",
                text_color=get_color("negative")
            )

