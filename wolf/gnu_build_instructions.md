# Load the module path  
module use /usr/projects/climate/SHARED_CLIMATE/modulefiles/all  

# Load compiler / mpi / library modules  
module load gcc/4.8.2  
module load openmpi/1.6.5  
module load netcdf/4.4.0  
module load parallel-netcdf/1.5.0  
module load pio/1.7.2  

# Setup TAU
module load papi/5.4.1
module load tau/2.24.1  
export TAU_MAKEFILE=/usr/projects/hpcsoft/toss2/wolf/tau/2.24.1/x86_64/lib/Makefile.tau-gcc-4.8.2-openmpi-1.6.5-papi-mpi-pdt  
export TAU_OPTIONS='-optRevert -optNoCompInst'  

# Build MPAS  
make gfortran CORE=ocean  

# Build MPAS with TAU
make gfortran CORE=ocean TAU=true TIMER_LIB=tau  
