# F: Drive Installation Guide

## ✅ Installation Complete!

Your Covered Calls Engine is installed on **F: drive** to avoid disk space issues on C:.

### 📁 Installation Locations

- **Virtual Environment**: `F:\.venv-stocks\`
- **UV Cache**: `F:\.uv-cache\`
- **Project Code**: `C:\Users\Waleed\Desktop\Stocks\`

### 🚀 How to Launch

#### Option 1: Quick Launch Script
```powershell
.\START_GUI.ps1
```

#### Option 2: Manual
```powershell
# Activate virtual environment
F:\.venv-stocks\Scripts\Activate.ps1

# Launch GUI
python run_gui.py
```

#### Option 3: CLI Demo
```powershell
F:\.venv-stocks\Scripts\Activate.ps1
python example_runner.py
```

---

## 📦 What's Installed (49 packages)

### Core Features ✅
- Pydantic, NumPy, Pandas, SciPy
- CustomTkinter (GUI)
- Matplotlib, Pillow

### GPU Features ✅
- **PyTorch 2.8.0** (~2GB)
- CUDA support ready

### ML Models ✅
- **XGBoost 3.0.5**
- **scikit-learn 1.7.2**
- **hmmlearn 0.3.3**
- **SHAP 0.48.0**

### Simulation Tools ✅
- **Numba 0.62.1** (JIT compilation)
- **statsmodels 0.14.5**

---

## 💾 Disk Usage

- **F: Drive Used**: ~3GB
- **F: Drive Free**: 561GB remaining
- **C: Drive Saved**: ~3GB

---

## 🔧 Maintenance

### Update Packages
```powershell
F:\.venv-stocks\Scripts\Activate.ps1
uv pip install -e ".[gpu,ml,sim,stats]" --upgrade
```

### Clean Cache
```powershell
# Set cache location
$env:UV_CACHE_DIR="F:\.uv-cache"

# Clean
uv cache clean
```

### Reinstall
```powershell
# Remove old venv
Remove-Item -Recurse -Force F:\.venv-stocks

# Create new
uv venv F:\.venv-stocks --python 3.12

# Activate
F:\.venv-stocks\Scripts\Activate.ps1

# Install
$env:UV_CACHE_DIR="F:\.uv-cache"
uv pip install -e ".[gpu,ml,sim,stats]"
```

---

## 🎯 Features Now Available

### Previously Disabled (Now Working!)
- ✅ **Theta Sharpe** - GPU Monte Carlo
- ✅ **Short Convexity Cost (SCC)** - GPU MC
- ✅ **CVaR Simulations** - Portfolio risk
- ✅ **RV LSTM** - Volatility forecasts
- ✅ **Breakout XGB** - ML classifier
- ✅ **HMM Regime** - Market state detection
- ✅ **SHAP Explainability** - Feature importance

### Always Working
- ✅ GUI with full interface
- ✅ Baseline metrics
- ✅ Dealer flow metrics
- ✅ Event risk detection
- ✅ Liquidity scoring
- ✅ Mock data generator

---

## 🐛 Troubleshooting

### GUI Won't Launch
```powershell
# Check activation
F:\.venv-stocks\Scripts\Activate.ps1

# Verify installation
python quick_start.py

# Should show:
# ✅ PyTorch version: 2.8.0
# ✅ CUDA available (or CPU)
```

### Import Errors
```powershell
# Reinstall package in editable mode
F:\.venv-stocks\Scripts\Activate.ps1
uv pip install -e . --force-reinstall
```

### Slow Performance
```powershell
# Check if using GPU
python -c "import torch; print(torch.cuda.is_available())"

# If False, install CuPy for your CUDA version
uv pip install cupy-cuda12x
```

---

## 📊 Performance

With full GPU features:
- **Scoring 5 tickers**: ~2-5 seconds
- **Monte Carlo (16K paths)**: ~50ms per option
- **Full backtest**: ~1 day/second

---

## 🔗 Quick Commands

```powershell
# Activate venv
F:\.venv-stocks\Scripts\Activate.ps1

# Launch GUI
python run_gui.py

# Run CLI demo
python example_runner.py

# Run tests
pytest tests/

# Check installation
python quick_start.py
```

---

**Everything is ready! Just run `.\START_GUI.ps1` to launch!** 🚀

