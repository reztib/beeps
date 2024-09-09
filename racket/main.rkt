#lang racket

; Prompt the user to enter the number of beeps
(display "Enter the number of beeps: ")
(flush-output) ; Ensure the prompt is displayed immediately

(define beeps (read)) ; Read and parse input as a number

; Recursive function to beep the specified number of times
(define (beep-loop n i)
  (if (> n 0)
      (begin
        (display "\a") ; Output a beep sound
        (display "Beep number: ") ; Display the current beep number
        (display i)
        (newline)
        (flush-output) ; Ensure the output is displayed immediately
        (sleep 1) ; Wait for 1 second before the next beep
        (beep-loop (- n 1) (+ i 1)))
      (void))) ; else branch doing nothing

; Check if the input is valid and start the beeping loop
(if (number? beeps)
    (beep-loop beeps 1)
    (display "Invalid input. Please enter a valid number.\n"))
