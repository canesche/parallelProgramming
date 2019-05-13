#include <stdio.h>
#include <omp.h>

int main() {

    int i;
    #pragma omp parallel for
    for(i = 0; i < 20; ++i){
        printf("Hello World %i\n", i);
    }

    return 0;
}