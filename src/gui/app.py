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
from src.gui.components.details_panel_mega import MegaDetailsPanel
from src.gui.components.status_bar import StatusBar
from src.gui.components.market_context_panel import MarketContextPanel
from src.gui.components.summary_stats_panel import SummaryStatsPanel
from src.gui.components.risk_dashboard import RiskDashboard
from src.gui.components.activity_feed import ActivityFeed
from src.gui.components.performance_panel import PerformancePanel


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
        
        # Auto-load demo data on startup
        self.after(100, self._load_demo_data)
        
    def _setup_ui(self):
        """Build the main UI layout with all panels."""
        # Configure grid - 3 columns, 3 rows
        self.grid_columnconfigure(1, weight=3)
        self.grid_columnconfigure(2, weight=1)
        self.grid_rowconfigure(1, weight=1)
        
        # Row 0: Market Context Panel (top bar across all columns)
        self.market_context = MarketContextPanel(self)
        self.market_context.grid(row=0, column=0, columnspan=3, sticky="ew", padx=0, pady=0)
        
        # Row 1, Column 0: Left sidebar - Watchlist & Scoring Controls
        self.sidebar = ctk.CTkFrame(self, width=280, corner_radius=0)
        self.sidebar.grid(row=1, column=0, sticky="nsew", padx=0, pady=0)
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
        
        # Row 1, Column 1: Center area with summary + table
        center_frame = ctk.CTkFrame(self, fg_color="transparent")
        center_frame.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")
        center_frame.grid_rowconfigure(1, weight=1)
        center_frame.grid_columnconfigure(0, weight=1)
        
        # Summary stats panel
        self.summary_stats = SummaryStatsPanel(center_frame)
        self.summary_stats.grid(row=0, column=0, sticky="ew", pady=(0, 5))
        
        # Results table
        self.results_table = ResultsTable(center_frame, self)
        self.results_table.grid(row=1, column=0, sticky="nsew")
        
        # Row 1, Column 2: Right sidebar with multiple panels
        right_frame = ctk.CTkFrame(self, width=320, fg_color="transparent")
        right_frame.grid(row=1, column=2, padx=(0, 10), pady=10, sticky="nsew")
        right_frame.grid_rowconfigure(1, weight=2)
        right_frame.grid_rowconfigure(2, weight=1)
        right_frame.grid_rowconfigure(3, weight=1)
        
        # Performance panel (top)
        self.performance_panel = PerformancePanel(right_frame)
        self.performance_panel.grid(row=0, column=0, sticky="ew", pady=(0, 5))
        
        # Details panel (main)
        self.details_panel = MegaDetailsPanel(right_frame, self)
        self.details_panel.grid(row=1, column=0, sticky="nsew", pady=5)
        
        # Risk dashboard
        self.risk_dashboard = RiskDashboard(right_frame)
        self.risk_dashboard.grid(row=2, column=0, sticky="ew", pady=5)
        
        # Activity feed (bottom)
        self.activity_feed = ActivityFeed(right_frame)
        self.activity_feed.grid(row=3, column=0, sticky="nsew", pady=(5, 0))
        
        # Row 2: Bottom - Status Bar
        self.status_bar = StatusBar(self)
        self.status_bar.grid(row=2, column=0, columnspan=3, sticky="ew", padx=0, pady=0)
        
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
        """Execute the scoring engine and update all panels."""
        if not self.watchlist:
            self.status_bar.set_message("⚠️ No tickers in watchlist", error=True)
            return
            
        self.status_bar.set_message("🔄 Running scoring engine...")
        self.update()
        
        # Import engine and run
        from src.gui.scoring_runner import run_scoring_pipeline
        from src.gui.mock_data_enhanced import generate_macro_data
        
        try:
            results = run_scoring_pipeline(self.watchlist)
            self.current_results = results
            
            # Update all panels
            self.results_table.update_results(results)
            self.summary_stats.update_stats(results)
            
            # Update performance panel
            avg_score = sum(r.get("score", 0) for r in results) / len(results) if results else 0
            self.performance_panel.update_performance(len(results), avg_score)
            
            # Update market context
            macro_data = generate_macro_data()
            self.market_context.update_market_data(macro_data)
            
            # Update regime in scoring panel and market context
            from src.gui.scoring_runner import detect_regime
            regime = detect_regime(macro_data)
            self.scoring_panel.update_regime(regime)
            self.market_context.update_regime(regime)
            
            self.status_bar.set_message(f"✅ Scored {len(results)} opportunities")
        except Exception as e:
            import traceback
            traceback.print_exc()
            self.status_bar.set_message(f"❌ Error: {str(e)}", error=True)
            
    def select_result(self, result: Dict[str, Any]):
        """Update details panel with selected result."""
        self.selected_row = result
        self.details_panel.update_details(result)
    
    def _load_demo_data(self):
        """Auto-load demo data on startup for full UI population."""
        # Pre-populate watchlist with 15 tickers
        demo_tickers = ["AAPL", "MSFT", "NVDA", "GOOGL", "AMZN", 
                        "TSLA", "META", "AMD", "SPY", "QQQ",
                        "NFLX", "DIS", "BA", "GS", "JPM"]
        
        for ticker in demo_tickers:
            if ticker not in self.watchlist:
                self.watchlist.append(ticker)
        
        self.watchlist_panel.refresh()
        self.status_bar.set_message("📊 Demo watchlist loaded. Click 'Run Scoring' to analyze.")
        
        # DISABLED: Auto-run scoring - let user trigger manually
        # self.after(500, self._auto_run_scoring)
    
    def _auto_run_scoring(self):
        """Run scoring and auto-select top result."""
        self.run_scoring()
        
        # Auto-select top result if available
        if self.current_results:
            self.after(200, lambda: self.select_result(self.current_results[0]))


def main():
    """Launch the application."""
    app = CoveredCallsApp()
    app.mainloop()


if __name__ == "__main__":
    main()

