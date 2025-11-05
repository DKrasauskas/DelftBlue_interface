#include <stdio.h>
#include <omp.h>
#include "pi/pi.h"
#include "benchmarking.h"
#include "matrix_vector/mv.h"


int main() {
//    int n = 1000000000;
//    int max_threads = omp_get_max_threads();
//    printf("runtime generic sequential:\n");
//    benchmark(generic_pi,  n);
//    benchmark(sequential_pi,  n);
//    printf("runtime parallel:\n");
//    for(int i = 1; i < max_threads + 1; i ++){
//        benchmarki(parallel_pi, i, n);
//    }
    dot();
    return 0;
}
