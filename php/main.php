<?php
// Prompt the user to enter the number of beeps
echo "Enter the number of beeps: ";
$input = fgets(STDIN); // Read input from the user

// Check if the input is a valid integer
if (!is_numeric($input)) {
    fprintf(STDERR, "Invalid input. Please enter a valid number.\n");
    exit(1); // Exit the program with an error code
}

$beeps = intval($input); // Convert input to an integer

// Loop to output the desired number of beeps
for ($i = 1; $i <= $beeps; $i++) {
    echo "\x07Beep number: $i\n"; // Output a beep sound and display the current beep number
    flush(); // Ensure the output is displayed immediately
    sleep(1); // Wait for 1 second before the next beep
}
?>
