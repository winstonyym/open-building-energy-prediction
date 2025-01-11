#!/usr/bin/env bash
set -ex  # show commands and exit on error

# 1. Source conda so 'conda' and 'conda activate' work
source "$(conda info --base)/etc/profile.d/conda.sh"

# 2. (Optional) remove old environment if present
conda env remove -n carbon_demo -y || true

# 3. Create from environment.yml
conda env create -n carbon_demo -f environment.yml

# 4. Activate
conda activate carbon_demo

# 5. Uninstall pip version of networkit (if it exists)
pip uninstall -y networkit || true

# 6. Install conda-forge's version of networkit
conda install -c conda-forge -y networkit
python -m pip install torch torchvision torchaudio 
python -m pip install torch_geometric
python -m pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.4.0+cpu.html

echo "All done! Environment set up successfully."
