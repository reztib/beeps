#include <iostream>
#include <unistd.h>

int main() {
    int beeps;

    // Prompt the user to enter the number of beeps
    std::cout << "How many beeps: ";
    
    // Check if the input is a valid integer
    if (!(std::cin >> beeps)) {
        // Print an error message if the input is invalid
        std::cerr << "Invalid input. Please enter a valid number." << std::endl;
        return 1; // Exit the program with an error code
    }

    // Loop to output the desired number of beeps
    for (int i = 1; i <= beeps; ++i) {
        std::cout << "\a"; // Output a beep sound
        std::cout << i << " " << std::endl; // Display the current beep number
        std::cout.flush(); // Ensure the output is displayed immediately
        sleep(1); // Wait for 1 second before the next beep
    }

    return 0; // Exit the program successfully
}
