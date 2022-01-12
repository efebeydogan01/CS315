fn main() {
    println!( "CODE FOR QUESTION 1");
	println!( "{}", 1 > 0); // prints "true"
    
    let x: bool = false;
    println!( "{}", x); // prints "false"
    let y: i32 = x.into(); // turnx x into integer
    println!( "{}", y); // prints "0"
	
	
	println!( "CODE FOR QUESTION 2");
	let a: i32 = 5;
    let b: i32 = 9;
    
    println!( "{}", a < b && b > 3); // prints "true"
    println!( "{}", a > 1 || b > 45); // prints "true"
	
	
	println!( "CODE FOR QUESTION 3");
	println!( "logical AND");
    let n = 31;
    let m = 45;
    
    if false && n / 0 > 0 { // due to short-circuiting, doesn't give an error here because the zero division is never evaluated
        // won't enter here
    }
    
    if n > m && bool_func() { // bool_func is not called
        // won't enter here
    }
    
    if n < m && bool_func() { // prints "inside function", bool_func is called now
        println!( "inside if!"); // this will be printed
    }
    
    println!( "logical OR");
    if true || m / 0 < 7 { // only first operand will be evaluated since it is enough to determine the result of the OR operation
        println!( "Inside if for OR"); // no error will be thrown due to zero division
    } 
    
    if m > n || bool_func() { // function won't be called
        println!("bool_func() is not called");
    }
    
    if m < n || bool_func() { // function will be called now
        println!("bool_func() is called");
    }
	
	
	println!( "CODE FOR QUESTION 4");
	if true || 7 / 0 > 5 {
        println!( "error avoided");
    }
	
	println!( "CODE FOR QUESTION 5");
	let k = 98;
    
    if k > 95 || bool_func() {
        // bool_func() will not be called in this situation
    }
}

fn bool_func() -> bool {
    println!("inside function");
    return true;
}