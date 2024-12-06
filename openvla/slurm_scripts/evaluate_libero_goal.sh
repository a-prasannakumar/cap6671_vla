#!/bin/bash

#SBATCH -c 4
#SBATCH --mem=32G
#SBATCH --time=5:00:00
#SBATCH --gres=gpu:1
#SBATCH --constraint=gpu32
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user an660847@ucf.edu

echo "goal"
# Launch LIBERO-Spatial evals
python experiments/robot/libero/run_libero_eval.py \
  --model_family openvla \
  --pretrained_checkpoint openvla/openvla-7b-finetuned-libero-goal \
  --task_suite_name libero_goal \
  --center_crop True \
  --num_trials_per_task 3 \
  --load_in_8bit False
  --load_in_4bit False
echo "goal done."
