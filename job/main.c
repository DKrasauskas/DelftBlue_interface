#include <stdio.h>
#include <omp.h>

int main(void) {
    printf("Hello, World!\n");
    int num_of_threads = omp_get_max_threads();
    printf("Threads available : %d \n", num_of_threads);
    omp_set_num_threads(num_of_threads);
    #pragma omp parallel
    {
        int id = omp_get_thread_num();
        printf("this is thread %d \n", id);
    }
    return 0;
}
