"""Overview Tab - Quick stats and covered call basics."""

import customtkinter as ctk
from typing import Dict, Any, TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.pages.analytics import AnalyticsPage


class OverviewTab(ctk.CTkScrollableFrame):
    """Overview tab showing basic covered call metrics."""
    
    def __init__(self, parent, analytics_page: "AnalyticsPage"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.analytics_page = analytics_page
        self.option_data = None
        
    def load_data(self, option_data: Dict[str, Any]):
        """Load and display option data."""
        self.option_data = option_data
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
        
        # Calculate metrics
        from src.engine.features.baseline import compute_baseline_metrics
        
        rec = option_data['option_record']
        cost_basis = rec.underlying_price
        baseline = compute_baseline_metrics(rec, cost_basis)
        
        # Build UI
        self._build_header()
        self._build_position_details(rec, baseline)
        self._build_metrics_grid(rec, baseline)
        self._build_greeks_summary(option_data)
        self._build_pnl_chart(rec, baseline)
        
    def _build_header(self):
        """Build section header."""
        header = ctk.CTkLabel(
            self,
            text="COVERED CALL OVERVIEW",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_green"),
        )
        header.pack(pady=(10, 20))
        
    def _build_position_details(self, rec, baseline):
        """Build position summary."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="POSITION STRUCTURE",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        details = [
            ("Action", "BUY 100 shares + SELL 1 call option"),
            ("Stock Entry", f"${rec.underlying_price:.2f}"),
            ("Call Strike", f"${rec.strike:.2f}"),
            ("Call Premium", f"${rec.mid:.2f}" if rec.mid else "N/A"),
            ("Net Cost", f"${rec.underlying_price - (rec.mid or 0):.2f}"),
            ("Breakeven", f"${baseline.breakeven:.2f}"),
        ]
        
        for label, value in details:
            row = ctk.CTkFrame(frame, fg_color="transparent")
            row.pack(fill="x", padx=20, pady=3)
            
            lbl = ctk.CTkLabel(
                row,
                text=label + ":",
                font=ctk.CTkFont(family="Consolas", size=11),
                text_color=get_color("text_secondary"),
                anchor="w",
            )
            lbl.pack(side="left")
            
            val = ctk.CTkLabel(
                row,
                text=value,
                font=ctk.CTkFont(family="Consolas", size=11, weight="bold"),
                text_color=get_color("text_primary"),
                anchor="e",
            )
            val.pack(side="right")
        
        frame.pack(fill="x", padx=20, pady=15)
        
    def _build_metrics_grid(self, rec, baseline):
        """Build key metrics grid."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="KEY METRICS",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        # Grid container
        grid = ctk.CTkFrame(frame, fg_color="transparent")
        grid.pack(pady=10, padx=20, fill="x")
        
        pct_otm = ((rec.strike - rec.underlying_price) / rec.underlying_price) * 100
        
        metrics = [
            ("Annualized Yield", f"{baseline.ay*100:.2f}%", baseline.ay > 0.15),
            ("% OTM", f"{pct_otm:+.2f}%", pct_otm > 0),
            ("Upside Potential", f"{baseline.upside_potential*100:.2f}%", baseline.upside_potential > 0.05),
            ("Days to Expiry", str((rec.expiry - rec.asof.date()).days), True),
            ("Implied Volatility", f"{rec.iv*100:.1f}%" if rec.iv else "N/A", True),
            ("Open Interest", str(rec.open_interest or 0), (rec.open_interest or 0) > 1000),
        ]
        
        for idx, (label, value, is_good) in enumerate(metrics):
            row = idx // 2
            col = idx % 2
            
            metric_frame = ctk.CTkFrame(grid, fg_color=get_color("bg_tertiary"), corner_radius=0, height=70)
            metric_frame.grid(row=row, column=col, padx=5, pady=5, sticky="nsew")
            grid.columnconfigure(col, weight=1)
            
            lbl = ctk.CTkLabel(
                metric_frame,
                text=label,
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
            )
            lbl.pack(pady=(10, 0))
            
            val_color = get_color("accent_green") if is_good else get_color("text_primary")
            val = ctk.CTkLabel(
                metric_frame,
                text=value,
                font=ctk.CTkFont(family="Consolas", size=16, weight="bold"),
                text_color=val_color,
            )
            val.pack(pady=(5, 10))
        
        frame.pack(fill="x", padx=20, pady=15)
        
    def _build_greeks_summary(self, option_data):
        """Build Greeks summary section."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="GREEKS SNAPSHOT",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        greeks = [
            ("Delta (Δ)", f"{option_data['delta']:.4f}", "Probability of expiring ITM / Price sensitivity"),
            ("Gamma (Γ)", f"{option_data['gamma']:.4f}", "Rate of delta change"),
            ("Theta (Θ)", f"{option_data['theta']:.4f}", "Time decay per day"),
            ("Vega (ν)", f"{option_data['vega']:.4f}", "Sensitivity to volatility changes"),
        ]
        
        for label, value, desc in greeks:
            row = ctk.CTkFrame(frame, fg_color="transparent")
            row.pack(fill="x", padx=20, pady=3)
            
            lbl = ctk.CTkLabel(
                row,
                text=label,
                font=ctk.CTkFont(family="Consolas", size=11, weight="bold"),
                text_color=get_color("accent_cyan"),
                anchor="w",
                width=100,
            )
            lbl.pack(side="left")
            
            val = ctk.CTkLabel(
                row,
                text=value,
                font=ctk.CTkFont(family="Consolas", size=11, weight="bold"),
                text_color=get_color("text_primary"),
                anchor="w",
                width=100,
            )
            val.pack(side="left", padx=10)
            
            desc_lbl = ctk.CTkLabel(
                row,
                text=desc,
                font=ctk.CTkFont(family="Consolas", size=9),
                text_color=get_color("text_dim"),
                anchor="w",
            )
            desc_lbl.pack(side="left", padx=10)
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # Navigation hint
        hint = ctk.CTkLabel(
            self,
            text="→ Switch to other tabs for deep analysis: Greeks charts, Volatility, Monte Carlo, GEX, Events",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_dim"),
        )
        hint.pack(pady=20)
    
    def _build_pnl_chart(self, rec, baseline):
        """Build profit/loss diagram placeholder."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder
        
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="PROFIT/LOSS DIAGRAM AT EXPIRATION",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 5))
        
        desc = ctk.CTkLabel(
            frame,
            text=f"Shows profit/loss at different stock prices at expiry. Breakeven: ${baseline.breakeven:.2f}, Max profit: ${(rec.strike - rec.underlying_price + (rec.mid or 0)):.2f}",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
            wraplength=850,
        )
        desc.pack(padx=20, pady=(0, 10))
        
        chart = ChartPlaceholder(
            frame,
            title="Stock Price at Expiry → P/L",
            height=250,
            chart_type="line",
            axes_labels=("Stock Price ($)", "Profit/Loss ($)"),
        )
        chart.pack(fill="x", padx=20, pady=(0, 15))
        
        frame.pack(fill="x", padx=20, pady=15)

