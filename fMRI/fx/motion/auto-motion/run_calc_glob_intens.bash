#!/bin/bash
#
#SBATCH --job-name=calc_glob_intens
#SBATCH --output=output/calc_glob_intens.log
#
#SBATCH --cpus-per-task=28
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=1000
#SBATCH --partition=short,fat,long,longfat

module load R gcc

srun Rscript --verbose calculate_global_intensities.R
