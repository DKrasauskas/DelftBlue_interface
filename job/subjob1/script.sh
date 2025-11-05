#!/bin/bash

module load 2025
module load 2024r1 openmpi
pwd
cd OpenMP_exercises
pwd
cd build
pwd
ls -l


srun ./OpenMP_exercises >> output.txt
