## Installation
Installation instructions for a HPC cluster.

## OpenVLA
```bash
# Create and activate conda environment
conda create -n openvla python=3.10 -y
conda activate openvla

conda install pytorch torchvision torchaudio pytorch-cuda=12.4 -c pytorch -c nvidia -y  # UPDATE ME!

# Clone and install the openvla repo
git clone https://github.com/openvla/openvla.git
cd openvla
pip install -e .

# Install ninja
pip install packaging ninja
ninja --version; echo $?  # Verify Ninja --> should return exit code "0"

# Install flash_attn
cd slurm_install
sbatch install_vla_flashattn.sh

# Install_vla_flashattn.sh would do the following:
module load cuda
pip install "flash-attn==2.5.5" --no-build-isolation
```
```

## LIBERO
Clone and install the [LIBERO repo](https://github.com/Lifelong-Robot-Learning/LIBERO):

```bash
git clone https://github.com/Lifelong-Robot-Learning/LIBERO.git
cd LIBERO
pip install -e .
```

Additionally, install other required packages:
```bash
cd openvla
pip install -r experiments/robot/libero/libero_requirements.txt
```
