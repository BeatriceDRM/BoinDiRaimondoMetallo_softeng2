#!/bin/bash

# Load the required modules 
module load singularity

# Define the path to the Singularity image
SINGULARITY_IMAGE=matr.sif

# Run the application
singularity exec matr.sif mpirun -n 2 /src/matrix_multiplication matrixA.txt matrixB.txt
