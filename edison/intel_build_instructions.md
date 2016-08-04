# Purge environment:  
module rm craype  
module load craype/2.5.0  

module rm PrgEnv-intel  
module rm PrgEnv-cray  
module rm PrgEnv-gnu  
module rm intel  
module rm cce  
module rm gcc  
module rm pmi  
module rm cray-mpich2  
module rm cray-mpich  
module rm cray-hdf5  
module rm cray-hdf5-parallel  
module rm cray-netcdf  
module rm cray-netcdf-hdf5parallel  
module rm cray-parallel-netcdf  
module rm craype-sandybridge  
module rm craype-ivybridge  
module rm cray-libsci  
module rm papi  
module rm cmake  
module rm cray-petsc  
module rm esmf  

# Load cray modules  
module load craype-ivybridge  
module load cray-libsci/13.0.3  
module load pmi/5.0.10-1.0000.11050.0.0.ari  

# Load intel modules  
module load PrgEnv-intel/5.2.56  
module load intel/15.0.1.133  

# Load MPI and PAPI modules  
module load cray-mpich/7.3.0  
module load papi/5.4.1.3  

# Load netcdf and pnetcdf modules  
module load cray-hdf5-parallel/1.8.14  
module load cray-netcdf-hdf5parallel/4.3.3.1  
module load cray-parallel-netcdf/1.6.1  

# Export NETCDF / PNetCDF variables  
export NETCDF=${NETCDF_DIR}  
export PNETCDF=${PARALLEL_NETCDF_DIR}  

# Build PIO (v1.7.2):  
# ./configure CC=ftn CC=cc MPIF90=ftn MPIF77=ftn FC=ftn F77=ftn F90=ftn MPIFC=ftn MPICC=cc MPICXX=cc CXX=cc NETCDF_PATH=${NETCDF} PNETCDF_PATH=${PNETCDF}  

# Export PIO variables:  
export PIO=/global/homes/a/asarje/edison/pio1_6_3/pio  

# Load TAU moduels / variables  
export TAU=/global/project/projectdirs/acts/TAU/tau-2.25.1  
export PATH=${TAU}/craycnl/bin:$PATH  
export TAU_MAKEFILE=${TAU}/craycnl/lib/Makefile.tau-intel-papi-mpi-pdt  
export TAU_OPTIONS='-optRevert -optNoCompInst'  

# Alternate TAU instructions:  

#export TAU_MAKEFILE=/usr/common/usg/TAU/2.24/INTEL/craycnl/lib/Makefile.tau-intel-papi-mpi-pdt
#export TAU_OPTIONS='-optRevert -optNoCompInst'  

# Build MPAS  
make intel-nersc CORE=ocean TOOL_TARGET_ARCH="-target-cpu=sandybridge" TAU=true TIMER_LIB=tau  
