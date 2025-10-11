#!/usr/bin/env python3
"""Launch script for the Covered Calls Engine GUI."""

import sys
import os

# Add src to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "src"))

from gui.app import main

if __name__ == "__main__":
    print("Launching Covered Calls Engine GUI...")
    main()

