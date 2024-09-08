import time

# User inputs a number
beeps = int(input("How many beeps: "))

# Create a list with numbers from 1 to the entered number
beep_list = list(range(1, beeps + 1))

# Iterate through the list and execute a beep for each number
for i in beep_list:
    print("\a")     # Outputs a beep sound
    print(i)        # Displays the current number
    time.sleep(1)   # Waits for 1 second before the next beep
