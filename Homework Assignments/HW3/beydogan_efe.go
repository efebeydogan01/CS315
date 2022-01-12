package main
import "fmt"

func change(param1 int, param2 int) {
	fmt.Println("inside change function that uses pass by value")
	var temp = param1
	param1 = param2
	param2 = temp
}

func changePointer(param1 *int, param2 *int) {
	fmt.Println("inside change function that uses pass by reference")
	var temp = *param1
	*param1 = *param2
	*param2 = temp
}

func variadic(numbers ...int) int { // this function takes an undetermined number of integers and sums them
	fmt.Println("inside the variadic function that takes a variable number of integers and returns their sum")
	sum := 0

	for _, i := range numbers {
		sum = sum + i
	}
	return sum
}

func closure(message string) func() string { // this function returns a closure which returns a string
	counter := 0
	fmt.Println("Inside the function that returns a closure, counter = 0 at first")

	return func() string {
		counter++ // increments the counter every time
		fmt.Printf("inside closure, counter = %d \n", counter)
		message = message + " " + strconv.Itoa(counter) + " " // closure appends counter to the message received by the original function every time it is called
		return message
	}
}

func main() {
	fmt.Println("NESTED SUBPROGRAM DEFINITIONS")

	fmt.Println("An outer function that contains an inner function, which in turn contains another function, is defined")
	
	out := func( message string ) { // out is nested inside main
	  fmt.Println( "The message in the outer function, before inner function is called: " + message)
	  
	  inner := func( innerMessage string) { // inner is deeply nested inside out
	    deepNested := func( deepest string) { // deepNested is deeply nested inside inner
	      fmt.Println( "inside the deepest function, message is: " + deepest)
	    }
	    fmt.Println( "The message in the inner function is: " + innerMessage)
	    fmt.Println( "Even a more deeply nested function is called")
	    deepNested( "inner called the function inside itself") // "inner" calls the "deepNested" function that is nested inside of itself
	    fmt.Println( "inner function changes the message in the outer function")
	    message = "inner function has altered the message in the outer function" // the inner function alters the message variable, which was passed to the outer function as a parameter
	  }
	  fmt.Println( "inner function is called inside the outer function")
	  inner( "inner is called from outer") // inner is called inside outer
	  fmt.Println( "message in outer after being changed by inner: " + message) // message is altered by the inner function
	}
	
	fmt.Println( "outer function is called")
	out( "outer is called from main") // outer function is called in main
	// inner( "inner is called from main") -> an error, cannot be called
	
	
	
	
	fmt.Println("SCOPE OF LOCAL VARIABLES")
	
	fmt.Println("two functions are defined, one is nested inside the other")
	
	var y = 20
	fmt.Printf("a variable y in main is declared, y = %d \n", y)
	func1 := func() { // func1 is nested inside main 
	  var x = 10; // x is a local variable, only visible inside the block of func1
	  fmt.Printf("a variable x is defined inside the outer function, x = %d \n", x)
	  func2 := func() { // func2 is nested inside func1
	    fmt.Printf("inside the inner function, variable x = %d \n", x)
	    x += 10 // inner function can alter the value of x 
	    fmt.Println("inner function changes the value of x to x + 10")
	    
	    fmt.Printf("inside the inner function, variable y = %d \n", y)
	    y += 10 // inner function can alter the value of y which was declared in main
	    fmt.Println("inner function changes the value of y to y + 10")
	  }
	  fmt.Println("inner function is called inside outer function")
	  func2()
	  fmt.Printf("after the execution of inner function is over, variable x = %d \n", x)
	  // x's value has been changed by the inner function which has access to it
	}
	
	func1()
	fmt.Println("outer function's execution has finished, and the main function doesn't have access to the variable x that was defined locally inside the outer function")
	fmt.Printf("new value of variable y, which was altered in the deeply nested func2(), y = %d \n", y)
	// fmt.Println( x) -> gives an error, x is undefined here
	
	
	
	
	fmt.Println("PARAMETER PASSING METHODS")

	fmt.Println("two methods are defined to swap integers, one uses pass by value while the other uses pass by reference")

	var a = 5
	var b = 31
	fmt.Printf("before calling the swap method that uses pass by value: a = %d, b = %d \n", a, b)
	change(a, b)
	fmt.Printf("after calling the swap method that uses pass by value: a = %d, b = %d \n", a, b)
	fmt.Println("as can be seen, the values are not swapped")

	fmt.Printf("before calling the swap method that uses pass by reference: a = %d, b = %d \n", a, b)
	changePointer(&a, &b) // receiving the addresses of the parameters
	fmt.Printf("after calling the swap method that uses pass by reference: a = %d, b = %d \n", a, b)
	fmt.Println("the values are swapped as a result of using pass by reference (pointers)")
	
	
	
	
	fmt.Println("KEYWORD AND DEFAULT PARAMETERS")
	
	fmt.Println("keyword and default parameters aren't supported in go, however variadic functions that take a variable number of parameters may be defined")
	fmt.Println("a variadic function is defined")

	fmt.Printf("variadic function is called with no arguments: %d \n", variadic())
	fmt.Printf("variadic function is called with the arguments 31, 32, 33: %d \n", variadic(31, 32, 33))
	
	
	
	
	fmt.Println("CLOSURES")
	
	fmt.Println("a function which returns a closure returning a string is defined")
	fmt.Println("function returning the closure receives a string message initially, and then that message is altered by the closure every time it is called")
	fmt.Println("the closure increments and appends the counter variable to the initial message every time it is called")
	closureFunc := closure("closure is called and appends the counter to the message: ")

	fmt.Println("closure is called 3 times")
	fmt.Println(closureFunc())
	fmt.Println(closureFunc())
	fmt.Println(closureFunc())
}