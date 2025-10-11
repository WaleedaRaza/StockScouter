"""Scoring control panel component."""

import customtkinter as ctk
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from src.gui.app import CoveredCallsApp


class ScoringPanel(ctk.CTkFrame):
    """Panel for scoring controls and regime display."""
    
    def __init__(self, parent, app: "CoveredCallsApp"):
        super().__init__(parent)
        self.app = app
        
        # Title
        title = ctk.CTkLabel(
            self,
            text="🎯 Scoring Engine",
            font=ctk.CTkFont(size=16, weight="bold"),
        )
        title.pack(padx=10, pady=(10, 5))
        
        # Regime display
        self.regime_label = ctk.CTkLabel(
            self,
            text="Regime: Calm",
            font=ctk.CTkFont(size=13),
            text_color=("gray10", "gray90"),
        )
        self.regime_label.pack(padx=10, pady=5)
        
        # Tau selector
        tau_frame = ctk.CTkFrame(self, fg_color="transparent")
        tau_frame.pack(fill="x", padx=10, pady=5)
        
        ctk.CTkLabel(tau_frame, text="Days to Expiry:", font=ctk.CTkFont(size=12)).pack(anchor="w")
        
        self.tau_var = ctk.StringVar(value="21")
        tau_selector = ctk.CTkSegmentedButton(
            tau_frame,
            values=["14", "21", "30"],
            variable=self.tau_var,
        )
        tau_selector.pack(fill="x", pady=2)
        
        # Delta range
        delta_frame = ctk.CTkFrame(self, fg_color="transparent")
        delta_frame.pack(fill="x", padx=10, pady=5)
        
        ctk.CTkLabel(delta_frame, text="Delta Range:", font=ctk.CTkFont(size=12)).pack(anchor="w")
        
        delta_values = ctk.CTkFrame(delta_frame, fg_color="transparent")
        delta_values.pack(fill="x")
        
        self.delta_min = ctk.CTkEntry(delta_values, width=60, placeholder_text="0.25")
        self.delta_min.pack(side="left", padx=(0, 5))
        
        ctk.CTkLabel(delta_values, text="to").pack(side="left", padx=5)
        
        self.delta_max = ctk.CTkEntry(delta_values, width=60, placeholder_text="0.35")
        self.delta_max.pack(side="left", padx=(5, 0))
        
        # Run button
        self.run_btn = ctk.CTkButton(
            self,
            text="▶  Run Scoring",
            command=self.app.run_scoring,
            height=40,
            font=ctk.CTkFont(size=14, weight="bold"),
            fg_color=("#3B8ED0", "#1F6AA5"),
            hover_color=("#36719F", "#144870"),
        )
        self.run_btn.pack(fill="x", padx=10, pady=(15, 10))
        
    def update_regime(self, regime: str):
        """Update the displayed regime."""
        self.regime_label.configure(text=f"Regime: {regime}")

