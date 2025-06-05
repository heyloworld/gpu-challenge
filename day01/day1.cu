#include <stdio.h>

// CUDA kernel

__global__ void helloCUDA()
{
    printf("Hello!\n");
}

int main()
{
    // 1 block and 1 thread
    helloCUDA<<<1, 1>>>();
    cudaDeviceSynchronize();
    return 0;
}
