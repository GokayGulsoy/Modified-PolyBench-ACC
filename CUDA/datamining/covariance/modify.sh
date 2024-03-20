## Execute this shell script in order to generate modified CUDA source code file

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_1_X" covariance.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_1_covariance.cu

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_2_X" modified_1_covariance.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_2_covariance.cu

CUDAIntegratedTransformerTool --threads=128 --change-specific=true --change-var-name="DIM_THREAD_BLOCK_KERNEL_3_X" modified_2_covariance.cu -- -I/home/gokay/PolyBench-ACC/common --cuda-gpu-arch=sm_75 > modified_covariance.cu

rm modified_1_covariance.cu
rm modified_2_covariance.cu
