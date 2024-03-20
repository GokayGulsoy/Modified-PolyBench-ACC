## Execute this shell script in order to generate modified CUDA source code file


CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_X" 3mm.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_1_3mm.cu


CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_Y" modified_1_3mm.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_3mm.cu

rm modified_1_3mm.cu
