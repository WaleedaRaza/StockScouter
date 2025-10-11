#!/bin/bash
# Bash setup script using UV (for WSL/Linux/Mac)
# Run with: ./setup_uv.sh

echo "================================================"
echo "  Covered Calls Engine - UV Setup"
echo "================================================"
echo ""

# Check if UV is installed
echo "Checking for UV..."
if ! command -v uv &> /dev/null; then
    echo "UV not found. Installing UV..."
    pip install uv
    if [ $? -ne 0 ]; then
        echo "Failed to install UV. Please install manually:"
        echo "  pip install uv"
        exit 1
    fi
    echo "✓ UV installed successfully!"
else
    echo "✓ UV is already installed"
fi

echo ""
echo "Installing Covered Calls Engine..."

# Install base package
uv pip install -e .
if [ $? -ne 0 ]; then
    echo "Installation failed!"
    exit 1
fi

echo "✓ Base package installed"

# Ask if user wants optional dependencies
echo ""
read -p "Install optional dependencies (ML, stats, sim)? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing optional dependencies..."
    uv pip install -e ".[ml,sim,stats]"
    if [ $? -eq 0 ]; then
        echo "✓ Optional dependencies installed"
    else
        echo "⚠ Some optional dependencies failed to install"
    fi
fi

# Check for CUDA
echo ""
echo "Checking for CUDA..."
if command -v nvidia-smi &> /dev/null; then
    echo "✓ CUDA detected"
    read -p "Install CuPy for GPU acceleration? (y/n) " -n 1 -r
    echo ""
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "Which CUDA version? (11/12) " cuda_ver
        
        if [ "$cuda_ver" == "11" ]; then
            uv pip install cupy-cuda11x
        elif [ "$cuda_ver" == "12" ]; then
            uv pip install cupy-cuda12x
        fi
        
        if [ $? -eq 0 ]; then
            echo "✓ CuPy installed"
        fi
    fi
else
    echo "⚠ CUDA not detected. GPU acceleration will not be available."
fi

# Verify installation
echo ""
echo "Verifying installation..."
python quick_start.py

echo ""
echo "================================================"
echo "  Setup Complete!"
echo "================================================"
echo ""
echo "Next steps:"
echo "  • Run CLI demo:  python example_runner.py"
echo "  • Launch GUI:    python run_gui.py"
echo "  • Run tests:     pytest tests/"
echo ""

