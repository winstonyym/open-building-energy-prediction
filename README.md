# Building Operating Energy Prediction Demo

# Overview

We present an open science workflow combining measured building energy data and graph neural network for city scale building operating energy prediction. The repository includes code notebooks to generate urban graphs, sample datasets, and code to implement GNN training and validation. While it is possible to run the code on CPU, we recommended using a graphics processing unit (GPU) for full implementation.

# System Requirements

## Hardware Requirements

To run the demo workflow, users require only a standard computer with enough RAM to support the operations defined by a user. Having >4GB RAM would be preferable. 

The demo was implemented on a MacBook Pro, M1 Chip with 16GB RAM and 512GB storage.

## Software Requirements

### OS Requirements

The package development version is tested on MacOS operating systems. The implementation would work on the following systems:

Linux: Ubuntu 22.04  
Mac OSX:  
Windows:  

Before running the demo, users should have Python version 3.8.0 or higher.

# Installation Guide & Dependencies

1. Clone the code repository either with CLI or by accessing the code base
2. Navigate to the local folder location
3. Open up a terminal/command prompt and install the conda environment

```
$ cd ./<location>
$ chmod +x ./setup.sh
$ ./setup.sh
```

4. Installation completed

(Optional) For JupyterLab / JupyterNotebook users, you can additionally add a notebook kernel via:

```
$ conda activate carbon_demo
```

# Repository Structure
- `building_satellite` (Placeholder folder for building satellite images)
- `data` (Placeholder folder for city graph objects and edges)
- `energy_data` (Seattle 2022 Building Energy Benchmarking Data)
- `notebooks` (Notebooks for generating city graphs, downloading satellite chips [^1], and GNN training [^2][^3].)

[^1]: Please first obtain Mapbox API developer key at: https://docs.mapbox.com/help/getting-started/access-tokens/#how-access-tokens-work.
[^2]: Complete GNN workflow for Seattle. Supplementary data files for Seattle are hosted on Figshare: https://doi.org/10.6084/m9.figshare.28188242.v1. While it is possible to use CPU for inference, we recommend using GPU for efficient training and inference. 
[^3]: Accompanying data files for Melbourne, Washington DC, NYC-Manhattan, and Singapore are available at: https://doi.org/10.6084/m9.figshare.28785077

# Demo

For demos of the functions, please check out the `notebooks` folder in this directory. 

# Citation

If you use Urbanity in your work, please cite:
<br></br>
Yap, W., Stouffs, R. & Biljecki, F. Urbanity: automated modelling and analysis of multidimensional networks in cities. npj Urban Sustain 3, 45 (2023). https://doi.org/10.1038/s42949-023-00125-w

Yap, W., Biljecki, F. A Global Feature-Rich Network Dataset of Cities and Dashboard for Comprehensive Urban Analyses. Sci Data 10, 667 (2023). https://doi.org/10.1038/s41597-023-02578-1