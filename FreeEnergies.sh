# Script that installs the right package for the script FreeEnergies.ipynb
set -e
"${SHELL}" <(curl -L micro.mamba.pm/install.sh)
source ~/.bashrc
micromamba env create -n free_energies python=3.7 pip -y
micromamba run -n free_energies pip install ensembler-rinikerlab numpy==1.19.5 jupyterlab