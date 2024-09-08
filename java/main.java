import java.util.Scanner;

public class main {
    
    public static void main(String[] args) {
        // Create a Scanner object to read user input
        Scanner scanner = new Scanner(System.in);
        int beeps;

        // Prompt the user to enter the number of beeps
        System.out.print("How many beeps: ");
        
        // Check if the input is a valid integer
        if (!scanner.hasNextInt()) {
            // Print an error message if the input is not an integer
            System.err.println("Invalid input. Please enter a valid number.");
            return; // Exit the program with an error
        }
        
        // Store the user's input in the 'beeps' variable
        beeps = scanner.nextInt();

        // Loop to output the desired number of beeps
        for (int i = 1; i <= beeps; ++i) {
            // Output a beep sound using the Unicode bell character
            System.out.print("\u0007"); 
            // Display the current beep number
            System.out.println(i); 
            try {
                // Wait for 1 second (1000 milliseconds) before the next beep
                Thread.sleep(1000); 
            } catch (InterruptedException e) {
                // Reset the interrupt status if the thread is interrupted
                Thread.currentThread().interrupt(); 
                // Print an error message indicating the thread was interrupted
                System.err.println("Thread was interrupted.");
            }
        }

        // Close the scanner to avoid resource leaks
        scanner.close(); 
    }
}
