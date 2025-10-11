"""Watchlist panel component."""

import customtkinter as ctk
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from src.gui.app import CoveredCallsApp


class WatchlistPanel(ctk.CTkScrollableFrame):
    """Panel for managing watchlist tickers."""
    
    def __init__(self, parent, app: "CoveredCallsApp"):
        super().__init__(parent, label_text="📋 Watchlist")
        self.app = app
        self.ticker_labels = []
        
        # Add ticker input
        self.input_frame = ctk.CTkFrame(self)
        self.input_frame.pack(fill="x", padx=5, pady=5)
        
        self.ticker_entry = ctk.CTkEntry(
            self.input_frame,
            placeholder_text="Enter ticker...",
            height=32,
        )
        self.ticker_entry.pack(side="left", fill="x", expand=True, padx=(0, 5))
        self.ticker_entry.bind("<Return>", self._add_ticker)
        
        self.add_btn = ctk.CTkButton(
            self.input_frame,
            text="+",
            width=32,
            height=32,
            command=self._add_ticker,
            font=ctk.CTkFont(size=18, weight="bold"),
        )
        self.add_btn.pack(side="right")
        
        # Ticker list container
        self.ticker_list_frame = ctk.CTkFrame(self, fg_color="transparent")
        self.ticker_list_frame.pack(fill="both", expand=True, padx=5, pady=5)
        
        self.refresh()
        
    def _add_ticker(self, event=None):
        """Add ticker from input."""
        ticker = self.ticker_entry.get().strip().upper()
        if ticker:
            self.app.add_ticker_to_watchlist(ticker)
            self.ticker_entry.delete(0, "end")
            
    def _remove_ticker(self, ticker: str):
        """Remove ticker from watchlist."""
        self.app.remove_ticker_from_watchlist(ticker)
        
    def refresh(self):
        """Refresh the ticker list display with rich cards."""
        # Clear existing
        for widget in self.ticker_list_frame.winfo_children():
            widget.destroy()
            
        # Add current watchlist as rich cards
        for ticker in self.app.watchlist:
            self._create_ticker_card(ticker)
    
    def _create_ticker_card(self, ticker: str):
        """Create a rich ticker card with price, IV, opportunities."""
        from src.gui.mock_data_enhanced import TICKER_PROFILES, generate_ticker_summary
        import random
        
        ticker_frame = ctk.CTkFrame(self.ticker_list_frame, fg_color=("gray85", "gray22"))
        ticker_frame.pack(fill="x", padx=2, pady=3)
        
        # Top row: Ticker name and remove button
        top_row = ctk.CTkFrame(ticker_frame, fg_color="transparent")
        top_row.pack(fill="x", padx=5, pady=(5, 2))
        
        ticker_label = ctk.CTkLabel(
            top_row,
            text=ticker,
            anchor="w",
            font=ctk.CTkFont(size=14, weight="bold"),
        )
        ticker_label.pack(side="left")
        
        remove_btn = ctk.CTkButton(
            top_row,
            text="✕",
            width=24,
            height=24,
            command=lambda t=ticker: self._remove_ticker(t),
            fg_color="transparent",
            hover_color=("gray70", "gray30"),
            text_color=("gray10", "gray90"),
        )
        remove_btn.pack(side="right")
        
        # Get profile for realistic data
        if ticker in TICKER_PROFILES:
            profile = TICKER_PROFILES[ticker]
            spot = random.uniform(*profile["spot_range"])
            change = random.uniform(*profile["daily_change"])
            avg_iv = sum(profile["iv_range"]) / 2
        else:
            spot = random.uniform(100, 300)
            change = random.uniform(-0.02, 0.02)
            avg_iv = random.uniform(0.2, 0.4)
        
        # Get summary from results if available
        summary = generate_ticker_summary(ticker, self.app.current_results)
        opps = summary.get("opps", random.randint(8, 15))
        best_score = summary.get("best_score", random.randint(45, 85))
        
        # Price row
        price_row = ctk.CTkFrame(ticker_frame, fg_color="transparent")
        price_row.pack(fill="x", padx=5, pady=2)
        
        change_color = ("#2D5016", "#90EE90") if change >= 0 else ("#5C1F1F", "#FF6B6B")
        change_sign = "+" if change >= 0 else ""
        
        price_label = ctk.CTkLabel(
            price_row,
            text=f"${spot:.2f}",
            font=ctk.CTkFont(size=12),
            anchor="w",
        )
        price_label.pack(side="left")
        
        change_label = ctk.CTkLabel(
            price_row,
            text=f"{change_sign}{change*100:.1f}%",
            font=ctk.CTkFont(size=11),
            text_color=change_color,
        )
        change_label.pack(side="left", padx=5)
        
        # Metrics row
        metrics_row = ctk.CTkFrame(ticker_frame, fg_color="transparent")
        metrics_row.pack(fill="x", padx=5, pady=(2, 5))
        
        # Score color
        if best_score >= 70:
            score_color = ("#2D5016", "#90EE90")
        elif best_score >= 50:
            score_color = ("#5C4A1A", "#FFD700")
        else:
            score_color = ("#5C1F1F", "#FF6B6B")
        
        metrics_text = f"IV: {avg_iv*100:.1f}%  Opps: {opps}"
        metrics_label = ctk.CTkLabel(
            metrics_row,
            text=metrics_text,
            font=ctk.CTkFont(size=10),
            text_color=("gray30", "gray70"),
            anchor="w",
        )
        metrics_label.pack(side="left")
        
        score_label = ctk.CTkLabel(
            metrics_row,
            text=f"⭐{best_score:.0f}",
            font=ctk.CTkFont(size=11, weight="bold"),
            text_color=score_color,
            anchor="e",
        )
        score_label.pack(side="right")

