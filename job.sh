#!/bin/bash

#SBATCH --job-name=my_job
#SBATCH --output=soutput.txt
#SBATCH --error=serror.txt
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1

export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

# Run the application
srun singularity exec --bind $TMPDIR:/scratch_local matr.sif bash -c "mpirun -np 2 /BoinDiRaimondoMetallo_softeng2/build/main"