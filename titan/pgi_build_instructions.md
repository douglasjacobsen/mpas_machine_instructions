# Load PGI modules  
module switch pgi pgi/15.7.0   
module switch cray-mpich cray-mpich/7.2.5  
module switch cray-libsci cray-libsci/13.2.0  
module load esmf/5.2.0rp2  
module switch atp atp/1.8.3  

# Load NetCDF modules  
module load cray-netcdf-hdf5parallel/4.3.3.1  
module load cray-parallel-netcdf/1.6.1  

export NETCDF=$NETCDF_DIR  
export PNETCDF=$PARALLEL_NETCDF_DIR  

# Load PIO (change it if you have your own build)  
# To build your own use (v1.7.2):  
# ./configure NETCDF_PATH=${NETCDF_DIR} PNETCDF_PATH=${PARALLEL_NETCDF_DIR} CC=cc FC=ftn MPICC=cc MPIFC=ftn MPIF77=ftn MPIF90=ftn MPICXX=cc  
# make clean && make  
export PIO=/ccs/home/douglasj/software/parallelio_1.7.2/pio  

# Load TAU modules, and set environment variables  
module load tau/2.25  
export TAU_MAKEFILE=/sw/xk6/tau/2.25/cle5.2_pgi15.7.0/craycnl/lib/Makefile.tau-papi-mpi-pdt-pgi  
export TAU_OPTIONS='-optRevert -optNoCompInst'  

# Build MPAS-O  
make pgi-nersc CORE=ocean TAU=true TOOL_TARGET_ARCH="-target-cpu=istanbul" TIMER_LIB=tau  
