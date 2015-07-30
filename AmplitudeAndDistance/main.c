#include <stdio.h>
#include "amplitudeone.h"
#include "capitol.h"

/* Created by Scott Turner
 * 7/11/2015
 */

int main(int argc, char **argv)
{

    
    printf("The amplitude program will run first.\n");
    // Amplitude to determine if a subset exists
    // for the described array below with an
    // amplitude of 1.
    int N = 6;
    int A[N];
    A[0] = 4;
    A[1] = 2;
    A[2] = 7;
    A[3] = 7;
    A[4] = 7;
    A[5] = 8;
    
    amp(A, N);
    
    printf("The distances from the capital will be determined.\n");
    // Check the number of cities between the surrounding
    // cities and the capitol. Where T[P] = Q, if
    // P = Q, then it is the capitol.
    int M = 7;
    int T[M];
    T[0] = 0;
    T[1] = 2;
    T[2] = 3;
    T[3] = 0;
    T[4] = 2;
    T[5] = 2;
    T[6] = 5;
    
    
    cap(T, M);
	return 0;
}
