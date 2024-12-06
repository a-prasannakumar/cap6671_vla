#!/bin/bash

#SBATCH -c 4
#SBATCH --mem=32G
#SBATCH --time=5:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=gpu32
#SBATCH --mail-type=END,FAIL

module load cuda

conda install pytorch torchvision torchaudio pytorch-cuda=12.4 -c pytorch -c nvidia -y
echo "VLA - installing pytorch done."
