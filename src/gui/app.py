"""Main GUI application for Covered Calls Engine."""

import customtkinter as ctk
from typing import List, Dict, Any
import sys
import os

# Add parent directory to path for imports
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../.."))

from src.gui.components.watchlist_panel import WatchlistPanel
from src.gui.components.scoring_panel import ScoringPanel
from src.gui.components.results_table import ResultsTable
from src.gui.components.details_panel import DetailsPanel
from src.gui.components.status_bar import StatusBar


class CoveredCallsApp(ctk.CTk):
    """Main application window."""
    
    def __init__(self):
        super().__init__()
        
        # Window setup
        self.title("Covered Calls Engine - Professional Analytics")
        self.geometry("1600x900")
        
        # Set theme
        ctk.set_appearance_mode("dark")
        ctk.set_default_color_theme("blue")
        
        # State
        self.watchlist: List[str] = []
        self.current_results: List[Dict[str, Any]] = []
        self.selected_row: Dict[str, Any] = None
        
        # Build UI
        self._setup_ui()
        
    def _setup_ui(self):
        """Build the main UI layout."""
        # Configure grid
        self.grid_columnconfigure(1, weight=3)
        self.grid_columnconfigure(2, weight=1)
        self.grid_rowconfigure(0, weight=1)
        
        # Left sidebar - Watchlist & Scoring Controls
        self.sidebar = ctk.CTkFrame(self, width=280, corner_radius=0)
        self.sidebar.grid(row=0, column=0, sticky="nsew", padx=0, pady=0)
        self.sidebar.grid_rowconfigure(1, weight=1)
        
        # Logo/Title
        title_label = ctk.CTkLabel(
            self.sidebar,
            text="⚡ Covered Calls\nEngine",
            font=ctk.CTkFont(size=24, weight="bold"),
        )
        title_label.grid(row=0, column=0, padx=20, pady=(20, 10))
        
        # Watchlist Panel
        self.watchlist_panel = WatchlistPanel(self.sidebar, self)
        self.watchlist_panel.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")
        
        # Scoring Panel
        self.scoring_panel = ScoringPanel(self.sidebar, self)
        self.scoring_panel.grid(row=2, column=0, padx=10, pady=10, sticky="ew")
        
        # Center - Results Table
        self.results_table = ResultsTable(self, self)
        self.results_table.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")
        
        # Right - Details Panel
        self.details_panel = DetailsPanel(self, self)
        self.details_panel.grid(row=0, column=2, padx=(0, 10), pady=10, sticky="nsew")
        
        # Bottom - Status Bar
        self.status_bar = StatusBar(self)
        self.status_bar.grid(row=1, column=0, columnspan=3, sticky="ew", padx=0, pady=0)
        
    def add_ticker_to_watchlist(self, ticker: str):
        """Add ticker to watchlist."""
        if ticker and ticker not in self.watchlist:
            self.watchlist.append(ticker)
            self.watchlist_panel.refresh()
            self.status_bar.set_message(f"Added {ticker} to watchlist")
            
    def remove_ticker_from_watchlist(self, ticker: str):
        """Remove ticker from watchlist."""
        if ticker in self.watchlist:
            self.watchlist.remove(ticker)
            self.watchlist_panel.refresh()
            self.status_bar.set_message(f"Removed {ticker} from watchlist")
            
    def run_scoring(self):
        """Execute the scoring engine."""
        if not self.watchlist:
            self.status_bar.set_message("⚠️ No tickers in watchlist", error=True)
            return
            
        self.status_bar.set_message("🔄 Running scoring engine...")
        self.update()
        
        # Import engine and run
        from src.gui.scoring_runner import run_scoring_pipeline
        
        try:
            results = run_scoring_pipeline(self.watchlist)
            self.current_results = results
            self.results_table.update_results(results)
            self.status_bar.set_message(f"✅ Scored {len(results)} opportunities")
        except Exception as e:
            self.status_bar.set_message(f"❌ Error: {str(e)}", error=True)
            
    def select_result(self, result: Dict[str, Any]):
        """Update details panel with selected result."""
        self.selected_row = result
        self.details_panel.update_details(result)


def main():
    """Launch the application."""
    app = CoveredCallsApp()
    app.mainloop()


if __name__ == "__main__":
    main()

