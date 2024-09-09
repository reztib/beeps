cat("Enter the number of beeps: ")
count <- as.integer(readLines("stdin", n=1))

for (i in 1:count) {
  cat("Beep number:", i, "\n")
  cat("\a")
  Sys.sleep(1)
}
