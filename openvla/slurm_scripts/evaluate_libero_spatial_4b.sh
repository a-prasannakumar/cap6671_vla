#!/bin/bash

#SBATCH -c 2
#SBATCH --mem=32G
#SBATCH --time=5:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=gpu32
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user an660847@ucf.edu

echo "spatial 4b"
# Launch LIBERO-Spatial evals
python experiments/robot/libero/run_libero_eval.py \
  --model_family openvla \
  --pretrained_checkpoint openvla/openvla-7b-finetuned-libero-spatial \
  --task_suite_name libero_spatial \
  --center_crop True \
  --num_trials_per_task 3 \
  --load_in_8bit False
  --load_in_4bit True
echo "spatial 4b done."

