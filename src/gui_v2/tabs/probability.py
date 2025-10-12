"""Probability Tab - Monte Carlo simulations and probability analysis."""

import customtkinter as ctk
from typing import Dict, Any, TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.pages.analytics import AnalyticsPage


class ProbabilityTab(ctk.CTkScrollableFrame):
    """Probability and Monte Carlo simulation tab."""
    
    def __init__(self, parent, analytics_page: "AnalyticsPage"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.analytics_page = analytics_page
        self.option_data = None
        self.simulation_results = None
        
    def load_data(self, option_data: Dict[str, Any]):
        """Load option data."""
        self.option_data = option_data
        self.simulation_results = None
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
        
        # Build UI
        self._build_header()
        self._build_basic_probabilities()
        self._build_monte_carlo_section()
        
    def _build_header(self):
        """Build section header."""
        header = ctk.CTkLabel(
            self,
            text="PROBABILITY ANALYSIS",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_green"),
        )
        header.pack(pady=(10, 20))
        
    def _build_basic_probabilities(self):
        """Build basic probability calculations."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="BASIC PROBABILITIES (Delta-based)",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        opt = self.option_data
        delta = abs(opt['delta'])
        
        probabilities = [
            ("Prob ITM at Expiry", f"{delta*100:.1f}%", delta),
            ("Prob OTM at Expiry", f"{(1-delta)*100:.1f}%", 1-delta),
            ("Prob Assigned (ITM)", f"{delta*100:.1f}%", delta),
            ("Prob Keep Stock (OTM)", f"{(1-delta)*100:.1f}%", 1-delta),
        ]
        
        for label, value, prob_val in probabilities:
            row = ctk.CTkFrame(frame, fg_color=get_color("bg_tertiary"), corner_radius=0)
            row.pack(fill="x", padx=20, pady=5)
            
            lbl = ctk.CTkLabel(
                row,
                text=label,
                font=ctk.CTkFont(family="Consolas", size=11),
                text_color=get_color("text_primary"),
                anchor="w",
            )
            lbl.pack(side="left", padx=15, pady=10)
            
            color = get_color("accent_green") if prob_val > 0.5 else get_color("accent_amber")
            val = ctk.CTkLabel(
                row,
                text=value,
                font=ctk.CTkFont(family="Consolas", size=14, weight="bold"),
                text_color=color,
                anchor="e",
            )
            val.pack(side="right", padx=15, pady=10)
        
        frame.pack(fill="x", padx=20, pady=15)
        
    def _build_monte_carlo_section(self):
        """Build Monte Carlo simulation section with lazy loading."""
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="MONTE CARLO SIMULATION",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            frame,
            text="Run Monte Carlo simulation to estimate theta sharpe ratio and convexity cost.\n"
                 "This simulates thousands of price paths to understand risk/reward.",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_secondary"),
            wraplength=850,
            justify="left",
        )
        desc.pack(padx=20, pady=10)
        
        # Simulation controls
        controls = ctk.CTkFrame(frame, fg_color="transparent")
        controls.pack(pady=10)
        
        paths_label = ctk.CTkLabel(
            controls,
            text="# of Paths:",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_primary"),
        )
        paths_label.pack(side="left", padx=10)
        
        self.paths_entry = ctk.CTkEntry(
            controls,
            width=100,
            height=35,
            font=ctk.CTkFont(family="Consolas", size=12),
            fg_color=get_color("bg_tertiary"),
        )
        self.paths_entry.insert(0, "10000")
        self.paths_entry.pack(side="left", padx=10)
        
        self.sim_btn = ctk.CTkButton(
            controls,
            text="⚡ RUN SIMULATION",
            width=180,
            height=40,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            command=self._run_simulation,
            fg_color=get_color("accent_cyan"),
            text_color=get_color("bg_primary"),
            hover_color=get_color("accent_green"),
        )
        self.sim_btn.pack(side="left", padx=10)
        
        # Results area
        self.sim_results_frame = ctk.CTkFrame(frame, fg_color=get_color("bg_tertiary"), corner_radius=0)
        self.sim_results_frame.pack(fill="x", padx=20, pady=15)
        
        self.sim_results_label = ctk.CTkLabel(
            self.sim_results_frame,
            text="Click 'RUN SIMULATION' to compute Monte Carlo metrics",
            font=ctk.CTkFont(family="Consolas", size=11),
            text_color=get_color("text_dim"),
        )
        self.sim_results_label.pack(pady=20)
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # Probability Visualizations
        self._build_probability_charts()
    
    def _build_probability_charts(self):
        """Build probability distribution chart placeholders."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder
        
        chart_frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        chart_frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            chart_frame,
            text="PROBABILITY DISTRIBUTIONS",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            chart_frame,
            text="After running simulation, these charts will display the probability distribution of terminal prices and P&L outcomes.",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
        )
        desc.pack(padx=20, pady=(0, 10))
        
        # Two charts
        charts_container = ctk.CTkFrame(chart_frame, fg_color="transparent")
        charts_container.pack(fill="x", padx=20, pady=10)
        charts_container.grid_columnconfigure(0, weight=1)
        charts_container.grid_columnconfigure(1, weight=1)
        
        # Price Distribution
        price_dist = ChartPlaceholder(
            charts_container,
            title="Terminal Price Distribution",
            height=250,
            chart_type="bar",
            axes_labels=("Stock Price at Expiry", "Probability"),
        )
        price_dist.grid(row=0, column=0, padx=(0, 5), sticky="ew")
        
        # P&L Distribution
        pnl_dist = ChartPlaceholder(
            charts_container,
            title="P&L Distribution",
            height=250,
            chart_type="bar",
            axes_labels=("Profit/Loss ($)", "Frequency"),
        )
        pnl_dist.grid(row=0, column=1, padx=(5, 0), sticky="ew")
        
        note = ctk.CTkLabel(
            chart_frame,
            text="[Populate after Monte Carlo simulation runs]",
            font=ctk.CTkFont(family="Consolas", size=8),
            text_color=get_color("text_dim"),
        )
        note.pack(pady=(5, 15))
        
    def _run_simulation(self):
        """Run Monte Carlo simulation - HEAVY COMPUTATION."""
        import time
        from src.engine.features.vol import compute_theta_sharpe, compute_short_convexity_cost
        
        try:
            n_paths = int(self.paths_entry.get())
            if n_paths < 100 or n_paths > 100000:
                raise ValueError("Paths must be between 100 and 100,000")
        except ValueError as e:
            self.sim_results_label.configure(
                text=f"❌ Invalid input: {str(e)}",
                text_color=get_color("negative")
            )
            return
        
        # Disable button during computation
        self.sim_btn.configure(state="disabled", text="⏳ RUNNING...")
        self.sim_results_label.configure(text="Computing simulations...", text_color=get_color("accent_amber"))
        self.update()
        
        opt = self.option_data
        rec = opt['option_record']
        tau_days = opt['dte']
        rv_hat = 0.25  # Could make this configurable
        
        t_start = time.time()
        
        try:
            # Run simulations
            theta_sharpe = compute_theta_sharpe(rec, rv_hat, tau_days, n_paths=n_paths)
            scc = compute_short_convexity_cost(rec, rv_hat, tau_days, n_paths=n_paths*2)
            
            elapsed = time.time() - t_start
            
            # Display results
            results_text = (
                f"Simulation completed in {elapsed:.2f}s ({n_paths} paths)\n\n"
                f"Theta Sharpe Ratio: {theta_sharpe:.4f}\n"
                f"  → Risk-adjusted theta efficiency\n"
                f"  → Higher is better (> 0.5 is good)\n\n"
                f"Short Convexity Cost: ${scc:.4f}\n"
                f"  → Expected cost from gamma exposure\n"
                f"  → Lower is better\n\n"
                f"Interpretation:\n"
                f"{'✅ Good trade' if theta_sharpe > 0.5 and scc < 2.0 else '⚠ Review risks'}"
            )
            
            color = get_color("accent_green") if theta_sharpe > 0.5 else get_color("accent_amber")
            self.sim_results_label.configure(text=results_text, text_color=color)
            
            self.simulation_results = {
                "theta_sharpe": theta_sharpe,
                "scc": scc,
                "n_paths": n_paths,
                "elapsed": elapsed,
            }
            
        except Exception as e:
            self.sim_results_label.configure(
                text=f"❌ Simulation failed: {str(e)}",
                text_color=get_color("negative")
            )
        
        finally:
            self.sim_btn.configure(state="normal", text="⚡ RUN SIMULATION")

