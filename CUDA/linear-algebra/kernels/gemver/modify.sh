## Execute this shell script in order to generate modified CUDA source code file

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_1_X" gemver.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_1_gemver.cu

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_1_Y" modified_1_gemver.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_2_gemver.cu

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_2_X" modified_2_gemver.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_3_gemver.cu

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_3_X" modified_3_gemver.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_gemver.cu

rm modified_1_gemver.cu
rm modified_2_gemver.cu
rm modified_3_gemver.cu
