include <stdio.h>
#include <stdlib.h>

// Function to count the number of states
int countStates() {
    return 50; // Assuming there are 50 states in the US
}

// Function to print flags
void printFlags() {
    // Iterate through the states and print their flags
    for (int i = 1; i <= countStates(); i++) {
        // Assuming flag files are named as "state%d.flag", where %d is the state number
        char filename[20];
        sprintf(filename, "state%d.flag", i);
        
        // Print flag
        printf("Flag of State %d:\n", i);
        printf("-------------------\n");
        FILE *file = fopen(filename, "r");
        if (file) {
            int c;
            while ((c = fgetc(file)) != EOF) {
                putchar(c);
            }
            fclose(file);
        } else {
            printf("Flag not found for State %d\n", i);
        }
        printf("\n\n");
    }
}

int main() {
    printf("Number of states in the US: %d\n\n", countStates());
    printFlags();
    return 0;
}

