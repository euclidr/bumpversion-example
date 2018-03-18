package main

import (
	"fmt"
	"time"
)

const version = "3.1.4"

func main() {
	fmt.Println("first version is: 3.1.4")
	for {
		fmt.Printf("current version: %s\n", version)
		time.Sleep(2 * time.Second)
	}
}
