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
        """Refresh the ticker list display."""
        # Clear existing
        for widget in self.ticker_list_frame.winfo_children():
            widget.destroy()
            
        # Add current watchlist
        for ticker in self.app.watchlist:
            ticker_frame = ctk.CTkFrame(self.ticker_list_frame)
            ticker_frame.pack(fill="x", padx=2, pady=2)
            
            label = ctk.CTkLabel(
                ticker_frame,
                text=f"  {ticker}",
                anchor="w",
                font=ctk.CTkFont(size=14, weight="bold"),
            )
            label.pack(side="left", fill="x", expand=True)
            
            remove_btn = ctk.CTkButton(
                ticker_frame,
                text="✕",
                width=28,
                height=28,
                command=lambda t=ticker: self._remove_ticker(t),
                fg_color="transparent",
                hover_color=("gray70", "gray30"),
                text_color=("gray10", "gray90"),
            )
            remove_btn.pack(side="right", padx=2)

