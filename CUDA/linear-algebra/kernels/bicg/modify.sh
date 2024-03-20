## Execute this shell script in order to generate modified CUDA source code file

CUDAIntegratedTransformerTool --threads=128 --dim3=true --num-dim3-changes=1 bicg.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_bicg.cu
