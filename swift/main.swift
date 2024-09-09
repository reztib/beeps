import Foundation

// Prompt the user to enter the number of beeps
print("Enter the number of beeps:")

// Read input and convert it to an integer
if let input = readLine(), let beeps = Int(input) {
    // Loop to output the desired number of beeps
    for i in 1...beeps {
        print("\u{0007}Beep number: \(i)") // Output a beep sound and display the current beep number
        fflush(stdout) // Ensure the output is displayed immediately
        sleep(1) // Wait for 1 second before the next beep
    }
} else {
    // Print an error message if the input is invalid
    print("Invalid input. Please enter a valid number.")
}
