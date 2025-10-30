#!/bin/bash
gcc -fopenmp -c main.c -o main.o
gcc -fopenmp -o main  main.o
./main >> output.txt
