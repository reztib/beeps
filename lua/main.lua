print("Enter the number of beeps:") -- Prompt the user
count = tonumber(io.read()) -- Read input and convert to number

for i = 1, count do -- Loop for the number of beeps
    print("Beep number: " .. i) -- Display current beep count
    io.write("\a") -- Produce beep sound
    os.execute("sleep 1") -- Wait for 1 second
end
