puts "Enter the number of beeps:" # Prompt the user
count = gets.to_i # Read user input and convert to integer

count.times do |i| # Loop for the number of beeps
  puts "Beep number: #{i+1}" # Display current beep count
  print "\a" # Produce beep sound
  sleep(1) # Wait for 1 second
end
