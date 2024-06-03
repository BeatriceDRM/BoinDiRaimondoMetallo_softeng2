#!/bin/bash

# Run the application
singularity exec matr.sif mpirun -n 2 ./main > output.txt  2> error.txt