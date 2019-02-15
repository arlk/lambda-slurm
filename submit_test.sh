#!/bin/bash
#SBATCH -c 1
#SBATCH -s
#SBATCH -O
#SBATCH --mem-per-cpu=100
#SBATCH --gres=gpu:1
sleep 120
echo "i am alone...."
nvidia-smi
