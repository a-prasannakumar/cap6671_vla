#!/bin/bash

#SBATCH -c 4
#SBATCH --mem=32G
#SBATCH --time=5:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=gpu32
#SBATCH --mail-type=END,FAIL

module load cuda

pip install flash-attn==2.6.1 --no-build-isolation
echo "VLA - installing flashattn done."
