#!/bin/bash
#SBATCH -J pndm  # Job name
#SBATCH -o pndm%j.log  # Name of stdout output file (%j expands to jobId)
#SBATCH -e pndm%j.err  # Name of stderr output file
#SBATCH --mail-type=ALL
#SBATCH --mail-user=xl289@cornell.edu
#SBATCH -N 1  # Total number of CPU nodes requested
#SBATCH -n 8  # Total number of CPU cores requrested
#SBATCH -t 120:00:00  # Run time (hh:mm:ss)
#SBATCH --mem=50000  # CPU Memory pool for all cores
#SBATCH --partition=cuvl --gres=gpu:2080ti:1 -w lecun
#SBATCH --get-user-env

python main.py --runner train --device cuda --config ddim_artcifar10.yml --train_path temp/train