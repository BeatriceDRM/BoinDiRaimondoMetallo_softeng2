#!/bin/bash

singularity exec matrix_multiplication.sif mpirun -n 2 /src/matrix_multiplication matrixA.txt matrixB.txt
