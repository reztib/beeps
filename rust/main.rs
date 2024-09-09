use std::io; // Import input/output library
use std::thread::sleep; // Import sleep function
use std::time::Duration; // Import Duration type for sleep

fn main() {
    let mut input = String::new();
    println!("Enter the number of beeps:"); // Prompt the user
    io::stdin().read_line(&mut input).expect("Failed to read input"); // Read user input
    let count: u32 = input.trim().parse().expect("Please enter a valid number"); // Parse input to number

    for i in 1..=count { // Loop for the number of beeps
        println!("Beep number: {}", i); // Display current beep count
        print!("\x07"); // Produce beep sound
        sleep(Duration::from_secs(1)); // Wait for 1 second
    }
}
