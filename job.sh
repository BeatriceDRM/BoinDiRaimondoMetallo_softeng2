#!/bin/bash

#SBATCH --job-name=my_job
#SBATCH --output=soutput.txt
#SBATCH --error=serror.txt
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1

export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

# Run the application
srun singularity run --bind $TMPDIR:/scratch_local matr.sif 