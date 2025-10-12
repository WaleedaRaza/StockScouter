#!/usr/bin/env python3
"""Launch script for GUI v2 - Single Ticker Deep Analysis."""

import sys
import os

# Add src to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "src"))

from gui_v2.app import main

if __name__ == "__main__":
    print("🚀 Launching Covered Call Analyzer v2 - Deep Research Terminal...")
    main()

