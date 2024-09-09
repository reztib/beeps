open System

// Prompt the user to enter the number of beeps
printf "Enter the number of beeps: "

// Try to parse the input as an integer
match Int32.TryParse(Console.ReadLine()) with
| true, beeps ->
    // Loop to output the desired number of beeps
    for i in 1..beeps do
        printf "\aBeep number: %d\n" i // Output a beep sound and display the current beep number
        Console.Out.Flush() // Ensure the output is displayed immediately
        Threading.Thread.Sleep(1000) // Wait for 1 second before the next beep
| _ -> 
    // Print an error message if the input is invalid
    printfn "Invalid input. Please enter a valid number."
