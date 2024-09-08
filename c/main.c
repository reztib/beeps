#include <stdio.h>
#include <unistd.h>

int main() {
    int beeps;

    // Prompt the user to enter the number of beeps
    printf("How many beeps: ");
    
    // Check if the input is a valid integer
    if (scanf("%d", &beeps) != 1) {
        // Print an error message if the input is invalid
        fprintf(stderr, "Invalid input. Please enter a valid number.\n");
        return 1; // Exit the program with an error code
    }

    // Loop to output the desired number of beeps
    for (int i = 1; i <= beeps; ++i) {
        printf("\a"); // Output a beep sound
        printf("%d \n", i); // Display the current beep number
        fflush(stdout); // Ensure the output is displayed immediately
        sleep(1); // Wait for 1 second before the next beep
    }

    return 0; // Exit the program successfully
}
