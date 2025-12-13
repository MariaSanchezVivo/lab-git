#!/bin/bash
#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno23/lab-git/lab-git
#SBATCH --job-name=cut_fastq
#SBATCH --ntasks=4

cd ~/lab-git/lab-git
# Ejecutar el script de corte en paralelo
srun -n 4 ./file-cut.sh

