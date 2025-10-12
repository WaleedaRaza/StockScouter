"""Dealer/GEX Tab - Dealer gamma exposure and positioning."""

import customtkinter as ctk
from typing import Dict, Any, TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.pages.analytics import AnalyticsPage


class DealerTab(ctk.CTkScrollableFrame):
    """Dealer positioning and GEX analysis tab."""
    
    def __init__(self, parent, analytics_page: "AnalyticsPage"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.analytics_page = analytics_page
        self.option_data = None
        self.gex_data = None
        
    def load_data(self, option_data: Dict[str, Any]):
        """Load option data."""
        self.option_data = option_data
        self.gex_data = None
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
        
        # Build UI
        self._build_header()
        self._build_gex_calculator()
        
    def _build_header(self):
        """Build section header."""
        header = ctk.CTkLabel(
            self,
            text="DEALER GAMMA EXPOSURE (GEX)",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_green"),
        )
        header.pack(pady=(10, 20))
        
        desc = ctk.CTkLabel(
            self,
            text="Dealer gamma exposure measures market maker hedging pressure.\n"
                 "High positive GEX → Dealers hedge by buying into weakness (stabilizing)\n"
                 "Negative GEX → Dealers amplify moves (destabilizing)",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_secondary"),
            wraplength=900,
            justify="left",
        )
        desc.pack(padx=40, pady=(0, 20))
        
    def _build_gex_calculator(self):
        """Build GEX calculation section."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="CALCULATE GEX FOR THIS CHAIN",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            frame,
            text="Click to calculate total gamma exposure across all strikes in this options chain.\n"
                 "This tells you where dealers are positioned and how they might hedge.",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_secondary"),
            wraplength=850,
            justify="left",
        )
        desc.pack(padx=20, pady=10)
        
        # Calculate button
        self.calc_btn = ctk.CTkButton(
            frame,
            text="⚡ CALCULATE GEX",
            width=180,
            height=40,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            command=self._calculate_gex,
            fg_color=get_color("accent_cyan"),
            text_color=get_color("bg_primary"),
            hover_color=get_color("accent_green"),
        )
        self.calc_btn.pack(pady=15)
        
        # Results area
        self.gex_results_frame = ctk.CTkFrame(frame, fg_color=get_color("bg_tertiary"), corner_radius=0)
        self.gex_results_frame.pack(fill="x", padx=20, pady=(0, 20))
        
        self.gex_results_label = ctk.CTkLabel(
            self.gex_results_frame,
            text="Click 'CALCULATE GEX' to compute dealer positioning",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_dim"),
        )
        self.gex_results_label.pack(pady=20)
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # GEX Visualizations
        self._build_gex_charts()
    
    def _build_gex_charts(self):
        """Build GEX visualization placeholders."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder
        
        chart_frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        chart_frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            chart_frame,
            text="DEALER GAMMA EXPOSURE VISUALIZATIONS",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            chart_frame,
            text="After calculating GEX, these charts show dealer positioning by strike and potential pin levels.",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
        )
        desc.pack(padx=20, pady=(0, 10))
        
        # Two charts
        charts_container = ctk.CTkFrame(chart_frame, fg_color="transparent")
        charts_container.pack(fill="x", padx=20, pady=10)
        charts_container.grid_columnconfigure(0, weight=1)
        charts_container.grid_columnconfigure(1, weight=1)
        
        # GEX by Strike
        gex_chart = ChartPlaceholder(
            charts_container,
            title="GEX by Strike",
            height=250,
            chart_type="bar",
            axes_labels=("Strike Price", "Gamma Exposure ($B)"),
        )
        gex_chart.grid(row=0, column=0, padx=(0, 5), sticky="ew")
        
        # Pin Risk Heatmap
        pin_chart = ChartPlaceholder(
            charts_container,
            title="Pin Risk Zones",
            height=250,
            chart_type="heatmap",
            axes_labels=("Strike", "Time to Expiry"),
        )
        pin_chart.grid(row=0, column=1, padx=(5, 0), sticky="ew")
        
        note = ctk.CTkLabel(
            chart_frame,
            text="[Populate after GEX calculation]",
            font=ctk.CTkFont(family="Consolas", size=8),
            text_color=get_color("text_dim"),
        )
        note.pack(pady=(5, 15))
        
    def _calculate_gex(self):
        """Calculate GEX for the chain."""
        from src.engine.features.dealer import compute_gex, estimate_zero_gamma_strike
        
        # Disable button
        self.calc_btn.configure(state="disabled", text="⏳ CALCULATING...")
        self.gex_results_label.configure(text="Computing GEX...", text_color=get_color("accent_amber"))
        self.update()
        
        try:
            # Get chain
            chain = self.analytics_page.get_chain_for_gex()
            
            if not chain:
                raise ValueError("Unable to load chain")
            
            # Calculate GEX
            gex = compute_gex(chain)
            zero_gamma = estimate_zero_gamma_strike(chain)
            
            # Format results
            gex_bn = gex / 1e9
            color = get_color("accent_green") if gex > 0 else get_color("negative")
            
            results_text = (
                f"Total GEX: ${gex_bn:.2f}B\n\n"
                f"{'Positive GEX → Stabilizing' if gex > 0 else 'Negative GEX → Amplifying'}\n\n"
            )
            
            if zero_gamma:
                results_text += f"Zero-Gamma Strike: ${zero_gamma:.2f}\n"
                results_text += f"  → Price may be 'pinned' near this level\n\n"
            
            results_text += f"Interpretation:\n"
            if gex > 0:
                results_text += "✅ Dealers are net short gamma (customers long)\n"
                results_text += "   They hedge by buying dips, selling rips → Range-bound\n"
            else:
                results_text += "⚠ Dealers are net long gamma (customers short)\n"
                results_text += "   They hedge by selling dips, buying rips → Trending\n"
            
            self.gex_results_label.configure(text=results_text, text_color=color)
            
            self.gex_data = {
                "gex": gex,
                "zero_gamma": zero_gamma,
            }
            
        except Exception as e:
            self.gex_results_label.configure(
                text=f"❌ Calculation failed: {str(e)}",
                text_color=get_color("negative")
            )
        
        finally:
            self.calc_btn.configure(state="normal", text="⚡ CALCULATE GEX")

