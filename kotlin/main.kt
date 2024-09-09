import kotlin.concurrent.thread

fun main() {
    print("Enter the number of beeps: ")
    val count = readLine()!!.toInt()

    for (i in 1..count) {
        println("Beep number: $i")
        print("\u0007")
        Thread.sleep(1000)
    }
}
