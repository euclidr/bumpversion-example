package main

import (
	"fmt"
	"time"
)

const version = "0.0.1"

func main() {
	for {
		fmt.Printf("current version: %s\n", version)
		time.Sleep(2 * time.Second)
	}
}
