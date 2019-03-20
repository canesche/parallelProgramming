#include <stdio.h>

__global__ void helloFromGPU() {
    int t = threadIdx.x;
    printf("Hello World from GPU %d!\n", t);
}

int main() {
    printf("Hello World from CPU!\n");

    helloFromGPU <<<1,10>>>();
    //cudaDeviceReset();

    return 0;
}