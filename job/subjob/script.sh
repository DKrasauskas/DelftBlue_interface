#!/bin/bash


module load 2025
module load 2024r1 openmpi
module load gcc/11.3.0
module load glibc/2.34
module load devtoolset/9
module avail >> modules.txt
mpiexec -np 2 ./OpenMP_exercises >> output.txt

