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
option 1:
cd slurm_install
sbatch install_vla_flashattn.sh

install_vla_flashattn.sh would do the following:
module load cuda
pip install "flash-attn==2.5.5" --no-build-isolation
```

## SIMPLER
Prerequisites:
- CUDA version >=11.8
- An NVIDIA GPU (ideally RTX)

Create an anaconda environment:
```
conda create -n simpler_env python=3.10
conda activate simpler_env
```

Clone this repo:
```
git clone https://github.com/simpler-env/SimplerEnv --recurse-submodules
```

Install numpy<2.0:
```
pip install numpy==1.24.4
```

Install ManiSkill2 real-to-sim environments and their dependencies:
```
cd {this_repo}/ManiSkill2_real2sim
pip install -e .
```

Install this package:
```
cd {this_repo}
pip install -e .
```

Since I didn't have root access, ffmpeg was installed manually.
https://superuser.com/questions/821844/use-ffmpeg-on-linux-without-administrative-rights
```
sudo apt install ffmpeg
```
```
pip install tensorflow==2.15.0
pip install -r requirements_full_install.txt
pip install tensorflow[and-cuda]==2.15.1 # tensorflow gpu support
```

Install simulated annealing utils for system identification:
```
pip install git+https://github.com/nathanrooy/simulated-annealing
```

```
# Install torch
cd slurm_install
sbatch install_vla_torch.sh

install_vla_torch.sh would do the following:
module load cuda
pip install torch==2.3.1 torchvision==0.18.1 timm==0.9.10 tokenizers==0.15.2 accelerate==0.32.1

# Install flash_attn
cd slurm_install
sbatch install_simpler_flashattn.sh

install_simpler_flashattn.sh would do the following:
module load cuda
pip install flash-attn==2.6.1 --no-build-isolation
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
