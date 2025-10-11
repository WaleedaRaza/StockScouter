# Installation Guide - Using UV

## 🚀 Quick Install (Recommended)

UV is a fast Python package installer written in Rust. It's significantly faster than pip.

### 1. Install UV

```bash
# Windows (PowerShell)
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"

# Or using pip (if you have Python already)
pip install uv
```

### 2. Install the Project

```bash
# Navigate to project directory
cd C:\Users\Waleed\Desktop\Stocks

# Install with UV (creates venv automatically)
uv pip install -e .
```

### 3. Install Optional Dependencies

```bash
# For ML models (XGBoost, scikit-learn, etc.)
uv pip install -e ".[ml,sim,stats]"

# For GPU support (CUDA 12.x example)
uv pip install cupy-cuda12x
```

### 4. Verify Installation

```bash
python quick_start.py
```

---

## 📦 What Gets Installed

### Core Dependencies
- `pydantic>=2.4` - Data validation
- `numpy>=1.26` - Numerical computing
- `pandas>=2.1` - Data manipulation
- `PyYAML>=6.0` - Config files
- `scipy>=1.11` - Scientific computing
- `torch>=2.2` - GPU Monte Carlo
- `customtkinter>=5.2.0` - GUI framework
- `pillow>=10.0` - Image support
- `matplotlib>=3.8` - Plotting

### Optional Dependencies
- **ML**: `xgboost`, `scikit-learn`, `hmmlearn`, `shap`
- **Sim**: `numba` (JIT compilation)
- **Stats**: `statsmodels` (time series)
- **GPU**: `cupy-cuda12x` (CUDA acceleration)

---

## 🔧 Alternative: Virtual Environment Setup

If you prefer manual control:

```bash
# Create virtual environment with UV
uv venv

# Activate
# Windows PowerShell:
.venv\Scripts\Activate.ps1
# Windows CMD:
.venv\Scripts\activate.bat

# Install
uv pip install -e ".[ml,sim,stats]"
```

---

## 🎨 GUI-Only Installation

If you only want to run the GUI (no ML training):

```bash
uv pip install -e .
```

This installs:
- Core engine
- GUI (CustomTkinter)
- Mock data generator
- Basic scoring pipeline

---

## 🚀 Launch the Application

### GUI
```bash
python run_gui.py
```

### CLI Example
```bash
python example_runner.py
```

### Tests
```bash
# Install pytest if needed
uv pip install pytest

# Run tests
pytest tests/
```

---

## 🐛 Troubleshooting

### UV Not Found
```bash
# Check PATH
where uv

# If not found, reinstall:
pip install uv
```

### CUDA Issues
```bash
# Check CUDA version
nvidia-smi

# Install matching CuPy version:
# CUDA 11.x:
uv pip install cupy-cuda11x
# CUDA 12.x:
uv pip install cupy-cuda12x
```

### Import Errors
```bash
# Ensure you're in project root
cd C:\Users\Waleed\Desktop\Stocks

# Reinstall in editable mode
uv pip install -e .
```

### GUI Won't Launch
```bash
# Install GUI dependencies explicitly
uv pip install customtkinter pillow matplotlib
```

---

## 📊 Performance Tips

### UV Speed Benefits
- **10-100x faster** than pip for large dependency trees
- **Parallel downloads** and installations
- **Better caching** for repeated installs
- **Minimal overhead** for small projects

### Benchmarks (Typical)
```
pip install -e ".[ml,sim,stats]"  → ~120 seconds
uv pip install -e ".[ml,sim,stats]" → ~12 seconds
```

---

## 🔄 Updating Dependencies

```bash
# Update all packages
uv pip install -e . --upgrade

# Update specific package
uv pip install --upgrade torch
```

---

## 🗑️ Uninstall

```bash
# Remove package
uv pip uninstall covered-calls-engine

# Remove virtual environment
rm -rf .venv
```

---

## 📝 Development Setup

For contributors:

```bash
# Install with dev dependencies
uv pip install -e ".[ml,sim,stats]"
uv pip install pytest ruff mypy

# Run checks
ruff check src/
pytest tests/
```

---

## 🌐 Offline Installation

```bash
# Download dependencies
uv pip download -e ".[ml,sim,stats]" -d ./wheels

# Install offline (on another machine)
uv pip install --no-index --find-links ./wheels -e .
```

---

## ⚡ Quick Commands Reference

```bash
# Install
uv pip install -e .

# Install with extras
uv pip install -e ".[ml,sim,stats]"

# Update
uv pip install -e . --upgrade

# List installed
uv pip list

# Check installation
python quick_start.py

# Launch GUI
python run_gui.py
```

---

**Using UV keeps your workflow fast and efficient!** 🚀

