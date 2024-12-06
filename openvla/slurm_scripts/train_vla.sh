#!/bin/bash

#SBATCH -c 4
#SBATCH --mem=32G
#SBATCH --time=5:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=gpu32
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user an660847@ucf.edu

echo "train vla"
torchrun --standalone --nnodes 1 --nproc-per-node 8 vla-scripts/train.py \
  --pretrained_checkpoint openvla/openvla-7b-prismatic \
  --vla.type prism-dinosiglip-224px+mx-bridge \
  --run_root_dir logs \
  --image_aug True \
  --save_interval 18 \
  --is_resume False
echo "train vla done."

