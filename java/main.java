import java.util.Scanner;

public class main {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int beeps;

        // Prompt the user to enter the number of beeps
        System.out.print("How many beeps: ");
        
        // Check if the input is a valid integer
        if (!scanner.hasNextInt()) {
            System.err.println("Invalid input. Please enter a valid number.");
            return; // Exit the program with an error
        }
        
        beeps = scanner.nextInt();

        // Loop to output the desired number of beeps
        for (int i = 1; i <= beeps; ++i) {
            System.out.print("\u0007"); // Output a beep sound (using Unicode bell character)
            System.out.println(i); // Display the current beep number
            try {
                Thread.sleep(1000); // Wait for 1 second before the next beep
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt(); // Reset interrupt status
                System.err.println("Thread was interrupted.");
            }
        }

        scanner.close(); // Close the scanner to avoid resource leaks
    }
}