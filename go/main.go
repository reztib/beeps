package main

import (
	"fmt"
	"time"
)

func main() {
	var count int
	fmt.Print("Enter the number of beeps: ")
	fmt.Scan(&count)

	for i := 1; i <= count; i++ {
		fmt.Printf("Beep number: %d\n", i)
		fmt.Print("\a")
		time.Sleep(1 * time.Second)
	}
}
