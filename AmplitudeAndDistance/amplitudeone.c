#include <stdio.h>
#include <stdlib.h>

/* Find the largest set within the array 
 * with an amplitude of 1.
 */

int *amplitude(int T[], int N);
int return_size;

void amp(int T[], int N) {
         
    int *A;
    
    A = amplitude(T, N);
    printf("The subset is:\n");
    for(int ii = 0; ii < return_size; ii++) {
        printf("%d: %d\n", ii, A[ii]);
    }
}
 
 // The storage array will be of size 2N to gather
 // what numbers are of 1 amplitude to the others
 // within array T.
 // Using 2 for loops will cause the program to run at
 // O(n^2) time.
int *amplitude(int T[], int N) {
    
    // Edge Case for the smallest array possible.
    if(N == 1)
        return 0;
    
    int double_n = 2*N;
    int storage[double_n];
    for(int i = 0; i < double_n; i++)
        storage[i] = 0;
    
    int count = -1;
    int max_count = -1;
    int max_location = -1;
    int T_location = -1;
    int up_down = 0;
    int number_to_look_for = -1;
    
    int difference = 0;
    
    int exists = 0; // Used as a boolean
    
    // Cycle through the array and compare values.
    for(int ii = 0; ii < N; ii++) {
        for(int iii = 0; iii < N; iii++) {
            difference = T[ii] - T[iii];
            if(difference == -1) { // Above
                storage[ii*2]++;
                exists = 1;
            }
            else if(difference == 1) { // Below
                storage[ii*2 + 1]++;
                exists = 1;
            }
        }
    }
    
    // Here the maximum count is found for the array.
    // The location will show what number has the most
    // connections to numbers of amplitude 1.
    for(int ii = 0; ii < double_n; ii++) {
        if(storage[ii] > max_count)
            max_count = storage[ii];
            max_location = ii;
    }
    
    if(exists) {
        // Division of integers within C will give the floor.
        // Using the remainder, the number to search for can
        // be found.
        T_location = max_location / 2;
        up_down = max_location % 2;
        number_to_look_for = T[T_location] - up_down;
        
        int *subset = malloc((max_count + 1)*sizeof(int));
        return_size = max_count + 1;
        //static int subset[max_count + 1];
        count = 0;
        
        subset[count] = T[T_location];
        count++;
        
        // The maximum subset with an amplitude has been found
        // to contain the number held at max_location mod 2.
        // Now search for the numbers that fit this requirement.
        for(int ii = 0; ii < N; ii++) { // double_n
            if(T[ii] == number_to_look_for) {
                subset[count] = T[ii];
                count++;
            }
        }
        return subset;
        
    } else { // The array had no subset with an amplitude of 1.
        return 0;
    }
}