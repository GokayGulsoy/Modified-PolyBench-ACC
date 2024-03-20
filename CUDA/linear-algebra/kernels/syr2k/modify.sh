## Execute this shell script in order to generate modified CUDA source code file


CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_X" syr2k.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > partially_modified_syr2k.cu

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_Y" partially_modified_syr2k.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_syr2k.cu

rm partially_modified_syr2k.cu
