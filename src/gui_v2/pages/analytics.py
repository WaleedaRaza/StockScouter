"""Page 3: Deep Analytics - Multi-tab detailed analysis system."""

import customtkinter as ctk
from typing import TYPE_CHECKING, Optional, Dict, Any
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color
from src.gui_v2.tabs import (
    OverviewTab,
    GreeksTab,
    VolatilityTab,
    ProbabilityTab,
    DealerTab,
    EventsTab,
)

if TYPE_CHECKING:
    from src.gui_v2.app import CoveredCallAnalyzer


class AnalyticsPage(ctk.CTkFrame):
    """Deep analytics page with multiple tabs for comprehensive analysis."""
    
    def __init__(self, parent, app: "CoveredCallAnalyzer"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.app = app
        
        # Header
        header = ctk.CTkFrame(self, height=80, fg_color=get_color("bg_secondary"), corner_radius=0)
        header.pack(fill="x", padx=0, pady=0)
        header.pack_propagate(False)
        
        # Back button
        back_btn = ctk.CTkButton(
            header,
            text="← CHAIN",
            width=100,
            height=35,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            command=lambda: app.show_page("chain_browser"),
            fg_color=get_color("bg_tertiary"),
            hover_color=get_color("bg_hover"),
        )
        back_btn.pack(side="left", padx=20, pady=20)
        
        # Title
        self.title_label = ctk.CTkLabel(
            header,
            text="DEEP ANALYTICS",
            font=ctk.CTkFont(family="Consolas", size=20, weight="bold"),
            text_color=get_color("accent_green"),
        )
        self.title_label.pack(side="left", padx=20)
        
        # Option info
        self.option_info = ctk.CTkLabel(
            header,
            text="",
            font=ctk.CTkFont(family="Consolas", size=14),
            text_color=get_color("text_primary"),
        )
        self.option_info.pack(side="left", padx=20)
        
        # Tab view
        self.tabview = ctk.CTkTabview(
            self,
            fg_color=get_color("bg_secondary"),
            segmented_button_fg_color=get_color("bg_tertiary"),
            segmented_button_selected_color=get_color("accent_cyan"),
            segmented_button_selected_hover_color=get_color("accent_green"),
            corner_radius=0,
        )
        self.tabview.pack(fill="both", expand=True, padx=20, pady=(0, 20))
        
        # Create tabs
        self.tabs = {}
        tab_classes = [
            ("Overview", OverviewTab),
            ("Greeks", GreeksTab),
            ("Volatility", VolatilityTab),
            ("Probability", ProbabilityTab),
            ("Dealer/GEX", DealerTab),
            ("Events", EventsTab),
        ]
        
        for tab_name, tab_class in tab_classes:
            tab_frame = self.tabview.add(tab_name)
            tab_widget = tab_class(tab_frame, self)
            tab_widget.pack(fill="both", expand=True, padx=0, pady=0)
            self.tabs[tab_name] = tab_widget
        
    def on_show(self):
        """Called when page is shown - load selected option."""
        if not self.app.selected_option:
            return
        
        opt = self.app.selected_option
        
        # Update header
        pct_otm = ((opt['strike'] - opt['underlying_price']) / opt['underlying_price']) * 100
        self.title_label.configure(text=f"{opt['ticker']} ${opt['strike']} - DEEP ANALYSIS")
        self.option_info.configure(
            text=f"Expiry: {opt['expiry']} ({opt['dte']} DTE)  |  "
                 f"${opt['mid']:.2f} premium  |  "
                 f"{pct_otm:+.1f}% OTM  |  "
                 f"Δ={opt['delta']:.3f}"
        )
        
        # Load data into all tabs
        for tab in self.tabs.values():
            tab.load_data(opt)
    
    def get_chain_for_gex(self):
        """Get full chain for GEX calculations."""
        from src.gui.mock_data_enhanced import generate_enhanced_chain
        if self.app.ticker:
            chain, _, _ = generate_enhanced_chain(self.app.ticker, num_strikes=15)
            return chain
        return None

