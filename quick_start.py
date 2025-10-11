#!/usr/bin/env python3
"""Quick start script to verify installation and run a minimal example."""

import sys

def check_imports():
    """Verify all critical imports work."""
    print("Checking imports...")
    try:
        from src.engine.data.contracts import OptionRecord, OptionChain
        from src.engine.features.baseline import compute_baseline_metrics
        from src.engine.features.vol import compute_iv_rv_edge
        from src.engine.features.dealer import compute_gex
        from src.engine.scoring.score import compute_final_score
        from src.engine.models.regime_hmm import RegimeDetector
        print("✅ All imports successful")
        return True
    except ImportError as e:
        print(f"❌ Import failed: {e}")
        return False


def check_torch():
    """Check if PyTorch and CUDA are available."""
    print("\nChecking PyTorch/CUDA...")
    try:
        import torch
        print(f"✅ PyTorch version: {torch.__version__}")
        if torch.cuda.is_available():
            print(f"✅ CUDA available: {torch.cuda.get_device_name(0)}")
        else:
            print("⚠️  CUDA not available, will use CPU")
        return True
    except ImportError:
        print("❌ PyTorch not installed")
        return False


def main():
    print("=" * 60)
    print("Covered Calls Engine - Quick Start")
    print("=" * 60)
    print()

    if not check_imports():
        print("\n❌ Setup incomplete. Install package with: uv pip install -e .")
        print("(Or use pip if UV not installed: pip install -e .)")
        sys.exit(1)

    if not check_torch():
        print("\n⚠️  PyTorch not found. Install with: uv pip install torch")

    print("\n" + "=" * 60)
    print("✅ Setup complete!")
    print("=" * 60)
    print("\nNext steps:")
    print("  1. Run the example: python example_runner.py")
    print("  2. Run tests: pytest tests/")
    print("  3. Wire your data pipeline to src/engine/data/adapters.py")
    print("  4. Train ML models with your historical data")
    print()


if __name__ == "__main__":
    main()

