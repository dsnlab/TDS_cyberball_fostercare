#!/bin/bash
#
#SBATCH --job-name=install_packages
#SBATCH --output=output/install_packages.log
#
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=8000
#SBATCH --partition=short,fat,long,longfat

module load R gcc

Rscript --verbose -e "osuRepo = 'http://ftp.osuosl.org/pub/cran/'; if(!require(devtools)){ install.packages('devtools',repos=osuRepo) }; if(!require(RNifti)){ devtools::install_github('jonclayden/RNifti') }; if(!require(tidyverse)){ install.packages('tidyverse',repos=osuRepo) }; if(!require(parallel)){ install.packages('parallel',repos=osuRepo) }; message('done')"
