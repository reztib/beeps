cat("Enter the number of beeps: ") # Prompt the user
count <- as.integer(readLines("stdin", n=1)) # Read input and convert to integer

for (i in 1:count) { # Loop for the number of beeps
  cat("Beep number:", i, "\n") # Display current beep count
  cat("\a") # Produce beep sound
  Sys.sleep(1) # Wait for 1 second
}
