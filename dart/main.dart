import 'dart:io'; // Import input/output library

void main() {
  stdout.write("Enter the number of beeps: "); // Prompt the user
  int count = int.parse(stdin.readLineSync()!); // Read input and convert to integer

  for (int i = 1; i <= count; i++) { // Loop for the number of beeps
    print("Beep number: $i"); // Display current beep count
    stdout.write('\x07'); // Produce beep sound
    sleep(Duration(seconds: 1)); // Wait for 1 second
  }
}
