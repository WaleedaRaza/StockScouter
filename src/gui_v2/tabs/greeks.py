"""Greeks Tab - Detailed Greeks analysis."""

import customtkinter as ctk
from typing import Dict, Any, TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.pages.analytics import AnalyticsPage


class GreeksTab(ctk.CTkScrollableFrame):
    """Detailed Greeks analysis tab."""
    
    def __init__(self, parent, analytics_page: "AnalyticsPage"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.analytics_page = analytics_page
        self.option_data = None
        
    def load_data(self, option_data: Dict[str, Any]):
        """Load and display Greeks data."""
        self.option_data = option_data
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
        
        # Build UI
        self._build_header()
        self._build_greeks_table()
        self._build_interpretation()
        
    def _build_header(self):
        """Build section header."""
        header = ctk.CTkLabel(
            self,
            text="GREEKS ANALYSIS",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_green"),
        )
        header.pack(pady=(10, 20))
        
    def _build_greeks_table(self):
        """Build detailed Greeks table."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="GREEKS VALUES",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        opt = self.option_data
        rec = opt['option_record']
        
        greeks_data = [
            ("Delta (Δ)", f"{opt['delta']:.6f}", 
             f"For every $1 move in {opt['ticker']}, this call moves ~${abs(opt['delta']):.2f}"),
            
            ("Gamma (Γ)", f"{opt['gamma']:.6f}",
             f"Delta will change by {opt['gamma']:.4f} for each $1 move in stock"),
            
            ("Theta (Θ)", f"{opt['theta']:.6f}",
             f"Position loses ${abs(opt['theta']):.2f} per day due to time decay"),
            
            ("Vega (ν)", f"{opt['vega']:.6f}",
             f"Position gains ${opt['vega']:.2f} if IV increases by 1%"),
        ]
        
        for greek_name, value, interpretation in greeks_data:
            row_frame = ctk.CTkFrame(frame, fg_color=get_color("bg_tertiary"), corner_radius=0)
            row_frame.pack(fill="x", padx=20, pady=5)
            
            # Greek name and value
            header_row = ctk.CTkFrame(row_frame, fg_color="transparent")
            header_row.pack(fill="x", padx=15, pady=(10, 5))
            
            name = ctk.CTkLabel(
                header_row,
                text=greek_name,
                font=ctk.CTkFont(family="Consolas", size=13, weight="bold"),
                text_color=get_color("accent_cyan"),
                anchor="w",
            )
            name.pack(side="left")
            
            val = ctk.CTkLabel(
                header_row,
                text=value,
                font=ctk.CTkFont(family="Consolas", size=13, weight="bold"),
                text_color=get_color("accent_green"),
                anchor="e",
            )
            val.pack(side="right")
            
            # Interpretation
            interp = ctk.CTkLabel(
                row_frame,
                text=interpretation,
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
                wraplength=800,
                anchor="w",
                justify="left",
            )
            interp.pack(fill="x", padx=15, pady=(0, 10))
        
        frame.pack(fill="x", padx=20, pady=15)
        
    def _build_interpretation(self):
        """Build Greeks interpretation guide."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="COVERED CALL GREEKS INTERPRETATION",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        interpretations = [
            ("Delta Risk", 
             f"Your covered call has delta={self.option_data['delta']:.3f}. This means you have ~{self.option_data['delta']*100:.1f}% exposure to upside. "
             f"You'll capture gains below the strike, but give up gains above it."),
            
            ("Gamma Risk",
             f"Gamma={self.option_data['gamma']:.4f} means your delta changes by this amount per $1 move. "
             f"High gamma near expiry means rapid changes in exposure."),
            
            ("Theta Benefit",
             f"You collect ${abs(self.option_data['theta']):.2f} per day from time decay (theta). "
             f"This is your 'rent' for selling the call."),
            
            ("Vega Risk",
             f"If IV drops by 1%, your short call gains ${self.option_data['vega']:.2f} (good for you). "
             f"If IV spikes, you lose money on the short call."),
        ]
        
        for title_text, desc in interpretations:
            row = ctk.CTkFrame(frame, fg_color="transparent")
            row.pack(fill="x", padx=20, pady=5)
            
            title_lbl = ctk.CTkLabel(
                row,
                text=f"• {title_text}",
                font=ctk.CTkFont(family="Consolas", size=11, weight="bold"),
                text_color=get_color("accent_amber"),
                anchor="w",
            )
            title_lbl.pack(anchor="w")
            
            desc_lbl = ctk.CTkLabel(
                row,
                text=desc,
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
                wraplength=900,
                anchor="w",
                justify="left",
            )
            desc_lbl.pack(anchor="w", padx=20, pady=(2, 0))
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # Greeks Sensitivity Charts
        self._build_greeks_charts()
    
    def _build_greeks_charts(self):
        """Build Greeks sensitivity chart placeholders."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder
        
        chart_frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        chart_frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            chart_frame,
            text="GREEKS SENSITIVITY ANALYSIS",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        # Two charts side by side
        charts_container = ctk.CTkFrame(chart_frame, fg_color="transparent")
        charts_container.pack(fill="x", padx=20, pady=10)
        charts_container.grid_columnconfigure(0, weight=1)
        charts_container.grid_columnconfigure(1, weight=1)
        
        # Delta vs Stock Price
        delta_chart = ChartPlaceholder(
            charts_container,
            title="Delta vs Stock Price",
            height=200,
            chart_type="line",
            axes_labels=("Stock Price", "Delta"),
        )
        delta_chart.grid(row=0, column=0, padx=(0, 5), sticky="ew")
        
        # Theta vs Time to Expiry
        theta_chart = ChartPlaceholder(
            charts_container,
            title="Theta Decay Over Time",
            height=200,
            chart_type="line",
            axes_labels=("Days to Expiry", "Theta"),
        )
        theta_chart.grid(row=0, column=1, padx=(5, 0), sticky="ew")
        
        desc = ctk.CTkLabel(
            chart_frame,
            text="These charts show how Greeks change with stock price and time. Useful for understanding position dynamics.",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
        )
        desc.pack(pady=(5, 15))

