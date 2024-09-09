package main

import (
	"fmt"  // Import formatting library
	"time" // Import time library for sleep
)

func main() {
	var count int
	fmt.Print("Enter the number of beeps: ") // Prompt the user
	fmt.Scan(&count)                         // Read user input

	for i := 1; i <= count; i++ { // Loop for the number of beeps
		fmt.Printf("Beep number: %d\n", i) // Display current beep count
		fmt.Print("\a")                    // Produce beep sound
		time.Sleep(1 * time.Second)        // Wait for 1 second
	}
}
