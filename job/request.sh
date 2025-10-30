#!/bin/sh
#SBATCH --job-name="job_DK"
#SBATCH --partition=compute
#SBATCH --time=00:00:10
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40
#SBATCH --mem-per-cpu=1M

srun script.sh
