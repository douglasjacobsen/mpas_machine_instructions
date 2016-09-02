#!/bin/sh

soft add @ibm-compilers-2015-08
soft add +mpiwrapper-xl

export NETCDF=/soft/libraries/netcdf/current/cnk-xl/current
export PNETCDF=/soft/libraries/pnetcdf/current/cnk-xl/current
export PIO=/home/douglasj/ParallelIO/pio
export LD_LIBRARY_PATH="${NETCDF}/lib:${LD_LIBRARY_PATH}"

MODEL=ocean_model

echo "Starting Cobalt job script"
runjob --np 4 -p 1 --block $COBALT_PARTNAME --verbose=INFO : ${MODEL}
