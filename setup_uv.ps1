# PowerShell setup script using UV
# Run with: .\setup_uv.ps1

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Covered Calls Engine - UV Setup" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Check if UV is installed
Write-Host "Checking for UV..." -ForegroundColor Yellow
$uvInstalled = Get-Command uv -ErrorAction SilentlyContinue

if (-not $uvInstalled) {
    Write-Host "UV not found. Installing UV..." -ForegroundColor Yellow
    python -m pip install uv
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Failed to install UV. Please install manually:" -ForegroundColor Red
        Write-Host "  python -m pip install uv" -ForegroundColor White
        exit 1
    }
    Write-Host "UV installed successfully!" -ForegroundColor Green
} else {
    Write-Host "UV is already installed" -ForegroundColor Green
}

Write-Host ""
Write-Host "Installing Covered Calls Engine..." -ForegroundColor Yellow

# Install base package
uv pip install -e .
if ($LASTEXITCODE -ne 0) {
    Write-Host "Installation failed!" -ForegroundColor Red
    exit 1
}

Write-Host "Base package installed" -ForegroundColor Green

# Ask if user wants optional dependencies
Write-Host ""
$installOptional = Read-Host "Install optional dependencies [y/n]"

if ($installOptional -eq 'y') {
    Write-Host "Installing optional dependencies..." -ForegroundColor Yellow
    uv pip install -e ".[ml,sim,stats]"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Optional dependencies installed" -ForegroundColor Green
    } else {
        Write-Host "Some optional dependencies failed to install" -ForegroundColor Yellow
    }
}

# Check for CUDA
Write-Host ""
Write-Host "Checking for CUDA..." -ForegroundColor Yellow
$cudaInstalled = Get-Command nvidia-smi -ErrorAction SilentlyContinue

if ($cudaInstalled) {
    Write-Host "CUDA detected" -ForegroundColor Green
    $installCupy = Read-Host "Install CuPy for GPU acceleration [y/n]"
    
    if ($installCupy -eq 'y') {
        $cudaVersion = Read-Host "Which CUDA version [11/12]"
        
        if ($cudaVersion -eq '11') {
            uv pip install cupy-cuda11x
        } elseif ($cudaVersion -eq '12') {
            uv pip install cupy-cuda12x
        }
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host "CuPy installed" -ForegroundColor Green
        }
    }
} else {
    Write-Host "CUDA not detected. GPU acceleration will not be available." -ForegroundColor Yellow
}

# Verify installation
Write-Host ""
Write-Host "Verifying installation..." -ForegroundColor Yellow
python quick_start.py

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  Setup Complete!" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor White
Write-Host "  Run CLI demo:  python example_runner.py" -ForegroundColor White
Write-Host "  Launch GUI:    python run_gui.py" -ForegroundColor White
Write-Host "  Run tests:     pytest tests/" -ForegroundColor White
Write-Host ""
