#!/bin/bash

 ROCMV=5.7.1
 CARD=amd

 module load /opt/rocm-${ROCMV}/lib/rocmmod cuda10.2/toolkit
 export HIP_PLATFORM=${CARD}
 #export HCC_HOME=/opt/rocm-3.3.0/hcc

 export GPU_LIBRARY_PATH=/opt/rocm-${ROCMV}/lib  
 export GPU_INCLUDE_PATH=/opt/rocm-${ROCMV}/include

 make API=HIP CARD=AMD

