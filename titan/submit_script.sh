#!/bin/bash
#    Begin PBS directives
#PBS -A {{ ACCOUNT }}
#PBS -N mpas_ocean
#PBS -j oe
#PBS -l walltime=00:10:00
#PBS -l nodes=1
#    End PBS directives and begin shell commands

# Set some environment variables if you need them.
export OMP_NUM_THREADS=1

# cd Into the directory to do the work
cd $MEMBERWORK/

date

aprun -n 16 ./ocean_model
