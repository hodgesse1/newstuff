#!/bin/bash
#SBATCH -t 00:05:00
#SBATCH -n 4
#SBATCH -J combo
#SBATCH -o combo.%j.out
#SBATCH -e combo.%j.err


module rm openmpi-1.6/gcc
module load openmpi-1.8/gcc 
module load r/rmpi


mpif90   -m64 -shared -L/usr/lib64/R/lib -Wl,-z,relro -o integcR.so integcR.f90 -L/usr/lib64/R/lib -lR -fPIC


mpirun   Rscript e1.in >ea.txt


