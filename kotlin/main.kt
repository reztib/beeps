import kotlin.concurrent.thread // Import threading utilities

fun main() {
    print("Enter the number of beeps: ") // Prompt the user
    val count = readLine()!!.toInt() // Read and convert input to integer

    for (i in 1..count) { // Loop for the number of beeps
        println("Beep number: $i") // Display current beep count
        print("\u0007") // Produce beep sound
        Thread.sleep(1000) // Wait for 1 second
    }
}
