## Execute this shell script in order to generate modified CUDA source code file

CUDAIntegratedTransformerTool --threads=128 --num-dim3-changes=1 2mm.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_2mm.cu
