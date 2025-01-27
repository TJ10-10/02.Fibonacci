package main

import "fmt"

func main() {
	fib := make([]int64, 10)
	fib[0] = 0
	fib[1] = 1

	for i := 2; i < 10; i++ {
		fib[i] = fib[i - 1] + fib[i - 2]
	}

	for _, val := range fib {
		fmt.Printf("%d ", val)
	}
	fmt.Println()
}
