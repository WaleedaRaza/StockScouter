"""Main application for single-ticker covered call analysis."""

import customtkinter as ctk
from typing import Optional, Dict, Any
import sys
import os

# Add parent to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../.."))

from src.gui_v2.pages.ticker_input import TickerInputPage
from src.gui_v2.pages.chain_browser import ChainBrowserPage
from src.gui_v2.pages.analytics import AnalyticsPage
from src.gui_v2.theme import apply_bloomberg_theme


class CoveredCallAnalyzer(ctk.CTk):
    """Main application for deep covered call analysis."""
    
    def __init__(self):
        super().__init__()
        
        # Window setup
        self.title("Covered Call Analyzer - Deep Research Terminal")
        self.geometry("1920x1080")
        
        # Apply Bloomberg-style theme
        apply_bloomberg_theme()
        
        # Application state
        self.ticker: Optional[str] = None
        self.ticker_data: Optional[Dict[str, Any]] = None
        self.chain_data: Optional[Dict[str, Any]] = None
        self.selected_option: Optional[Dict[str, Any]] = None
        
        # Page management
        self.current_page = None
        self.pages = {}
        
        # Build container
        self.container = ctk.CTkFrame(self, fg_color="transparent")
        self.container.pack(fill="both", expand=True)
        
        # Navigation bar
        self._build_navbar()
        
        # Content area
        self.content_frame = ctk.CTkFrame(self.container, fg_color="transparent")
        self.content_frame.pack(fill="both", expand=True, padx=0, pady=0)
        
        # Initialize pages
        self._init_pages()
        
        # Show ticker input page
        self.show_page("ticker_input")
        
    def _build_navbar(self):
        """Build navigation breadcrumb bar."""
        self.navbar = ctk.CTkFrame(
            self.container,
            height=50,
            fg_color=("#0D1117", "#0D1117"),
            corner_radius=0,
        )
        self.navbar.pack(fill="x", padx=0, pady=0)
        self.navbar.pack_propagate(False)
        
        # Title
        title = ctk.CTkLabel(
            self.navbar,
            text="⚡ COVERED CALL ANALYZER",
            font=ctk.CTkFont(family="Consolas", size=16, weight="bold"),
            text_color=("#00FF41", "#00FF41"),
        )
        title.pack(side="left", padx=20)
        
        # Breadcrumb
        self.breadcrumb = ctk.CTkLabel(
            self.navbar,
            text="→ Ticker Input",
            font=ctk.CTkFont(family="Consolas", size=13),
            text_color=("#8B949E", "#8B949E"),
        )
        self.breadcrumb.pack(side="left", padx=10)
        
        # Current ticker (if any)
        self.ticker_label = ctk.CTkLabel(
            self.navbar,
            text="",
            font=ctk.CTkFont(family="Consolas", size=14, weight="bold"),
            text_color=("#58A6FF", "#58A6FF"),
        )
        self.ticker_label.pack(side="right", padx=20)
        
    def _init_pages(self):
        """Initialize all pages."""
        self.pages["ticker_input"] = TickerInputPage(self.content_frame, self)
        self.pages["chain_browser"] = ChainBrowserPage(self.content_frame, self)
        self.pages["analytics"] = AnalyticsPage(self.content_frame, self)
        
    def show_page(self, page_name: str):
        """Switch to a different page."""
        # Hide current page
        if self.current_page:
            self.pages[self.current_page].pack_forget()
        
        # Show new page
        self.current_page = page_name
        self.pages[page_name].pack(fill="both", expand=True)
        
        # Update breadcrumb
        breadcrumbs = {
            "ticker_input": "→ Ticker Input",
            "chain_browser": f"→ {self.ticker or 'Ticker'} → Options Chain",
            "analytics": f"→ {self.ticker or 'Ticker'} → Chain → Analytics",
        }
        self.breadcrumb.configure(text=breadcrumbs.get(page_name, ""))
        
        # Update ticker label
        if self.ticker:
            self.ticker_label.configure(text=f"[{self.ticker}]")
        else:
            self.ticker_label.configure(text="")
        
        # Refresh page
        if hasattr(self.pages[page_name], "on_show"):
            self.pages[page_name].on_show()
    
    def load_ticker(self, ticker: str):
        """Load ticker data and navigate to chain browser."""
        from src.gui.mock_data_enhanced import TICKER_PROFILES, generate_macro_data
        import random
        
        ticker = ticker.upper().strip()
        
        if ticker not in TICKER_PROFILES:
            print(f"❌ Ticker {ticker} not in mock database")
            return False
        
        self.ticker = ticker
        profile = TICKER_PROFILES[ticker]
        
        # Generate ticker overview data
        spot = random.uniform(*profile["spot_range"])
        change = random.uniform(*profile["daily_change"])
        avg_iv = sum(profile["iv_range"]) / 2
        
        self.ticker_data = {
            "ticker": ticker,
            "spot": spot,
            "change_pct": change,
            "iv": avg_iv,
            "profile": profile,
            "macro": generate_macro_data(),
        }
        
        print(f"✓ Loaded {ticker}: ${spot:.2f} ({change*100:+.2f}%), IV: {avg_iv*100:.1f}%")
        
        # Navigate to chain browser
        self.show_page("chain_browser")
        return True
    
    def load_option(self, option_data: Dict[str, Any]):
        """Load selected option and navigate to analytics."""
        self.selected_option = option_data
        print(f"✓ Selected: {option_data['ticker']} ${option_data['strike']} {option_data['expiry']}")
        self.show_page("analytics")


def main():
    """Launch the application."""
    app = CoveredCallAnalyzer()
    app.mainloop()


if __name__ == "__main__":
    main()

