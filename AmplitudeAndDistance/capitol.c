#include <stdio.h>

int travel(int count, int traveller, int* addr, int* T);

int paths(int T[], int N, int* A);

// A simple graph setup used to test the program.
int cap(int T[], int N) {
    
    int A[N];
    paths(T, N, A);

    for(int iii = 0; iii < N; iii++)
        printf("City %d = %d\n", iii, A[iii]);
        
    return 0;
}

// Determine which slot of T[] is the capitol,
// then begin the process of iterating through
// each cities path towards it.
int paths(int T[], int N, int *A) {
    int cap = -1;
    int *addr;      // Pointer for the capitol
    addr = &cap;    // Address of the capitol
    
    // Find the Capitol.
    for(int ii = 0; ii < N; ii++) {
        if(T[ii] == ii)
            cap = ii;
    }
    
    for(int i = 0; i < N; i++) {
        A[i] = travel(0, i, addr, T);
    }
    
    return 0;
}

// Recursive function used to travel from a city towards
// the capitol. The base case is used reached when the
// capitol is the next city to reach or is the current
// city.
int travel(int count, int traveller, int* addr, int* T) {
    if(T[traveller] == *addr)
        return count;
    else {
        count++;
        int nextt;
        nextt = T[traveller];
        //printf("In city %d, going to %d! \n", traveller, T[traveller]);
        travel(count, nextt, addr, T);        
    }
    
}