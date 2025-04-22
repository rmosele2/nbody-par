#!/bin/bash
#SBATCH --job-name=nbody_parallel
#SBATCH --partition=Centaurus
#SBATCH --time=00:20:00
#SBATCH --mem-per-cpu=10g
#SBATCH --cpus-per-task=8

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

cd $HOME/ITCS4145/nbody-par/sequential

./nbody planet 200 5000000 1000 > solar.tsv
./nbody 100 1 10000 100 > rand100.tsv
./nbody 1000 1 10000 100 > rand1000.tsv
