#Useful options for tau usage:

## Metrics (note, not all machines will support all of these):

```
TIME - Total time in seconds
PAPI_FP_INS - Floating point instructions
PAPI_L1_TCM - L1 Cache Misses
PAPI_L2_TCM - L2 Cache Misses
PAPI_L3_TCM - L3 Cache Misses
PAPI_VEC_INS - Vector Instructions
PAPI_TOT_CYC - Total Cycles
PAPI_TOT_INS - Total completed instructions
```

Set metrics as follows:

export TAU_METRICS="TIME,PAPI_FP_INS"


## Communication Matrices

export TAU_COMM_MATRIX=1


## TAU Call Paths
export TAU_CALLPATH=1
export TAU_CALLPATH_DEPTH=200
