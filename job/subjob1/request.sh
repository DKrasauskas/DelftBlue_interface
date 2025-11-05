#!/bin/sh
#SBATCH --job-name="job_DK"
#SBATCH --partition=compute
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --mem-per-cpu=1G

module load 2025
module load 2024r1 openmpi
pwd
cd OpenMP_exercises
pwd
cd build
pwd
ls -l


srun ./OpenMP_exercises >> output.txt
