#!/bin/bash
#SBATCH -J fpndm  # Job name
#SBATCH -o fpndm%j.log  # Name of stdout output file (%j expands to jobId)
#SBATCH -e fpndm%j.err  # Name of stderr output file
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xl289@cornell.edu
#SBATCH -N 1  # Total number of CPU nodes requested
#SBATCH -n 8  # Total number of CPU cores requrested
#SBATCH -t 24:00:00  # Run time (hh:mm:ss)
#SBATCH --mem=50000  # CPU Memory pool for all cores
#SBATCH --partition=cuvl --gres=gpu:2080ti:1
#SBATCH --get-user-env

python main.py --runner sample --method F-PNDM --sample_speed 250 --device cuda --config ddim_artcifar10.yml --image_path temp/results/f-pndm --model_path temp/train/train.ckpt