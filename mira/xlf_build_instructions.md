# Load soft keys for compilers:  
soft add @ibm-compilers-2015-08  
soft add +mpiwrapper-xl  

# Export NetCDF and PNetCDF Paths:  
export NETCDF='/soft/libraries/netcdf/current/cnk-xl/current'  
export PNETCDF='/soft/libraries/pnetcdf/current/cnk-xl/current'  

# Build PIO (1.7.2)  
# ./configure --disable-netcdf --enable-pnetcdf PNETCDF_PATH=/soft/libraries/pnetcdf/1.3.1/cnk-xl/current/ CC=xlc FC=xlf90   CXX=xlcxx MPICC=mpixlc MPIFC=mpixlf90 MPICXX=mpixlcxx  

# Export PIO path:  
export PIO=/home/douglasj/ParallelIO/pio  

# Tau support?  
# soft add +tau-2.21.2  
# export TAU_MAKEFILE=???  
# export TAU_OPTIONS='-optRevert -optNoCompInst'  

make bluegene CORE=ocean GEN_F90=true  

# If building with TAU:  
make bluegene CORE=ocean GEN_F90=true TAU=true TIMER_LIB=tau  
