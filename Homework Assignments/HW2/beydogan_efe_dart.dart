bool boolFunc() {
  print( "inside function");
  return true;
}
void main() {
	print( "CODE FOR QUESTION 1");
	bool trueBool = true;
	bool falseBool = false;
	  
	print( trueBool); // prints "true"
	print( falseBool); // prints "false"
	  
	// if ( "asd") print( "true?"); -> error: "A value of type 'String' can't be assigned to a variable of type 'bool'."
	
	
	
	
	
	
	print( "CODE FOR QUESTION 2");
	// logical AND
	var c = 31;
	var d = false;
	print( d && c++ > 20); // prints "false", doesn't check or evaluate second expression since first one is false
	  
	// logical OR
	print( c > 17 || d); // prints "true", checks the first expression and skips the second one since first one is "true"
	  
	// ?? operation
	print( c ?? d); // prints "31" since first expression is not equal to null, skips second expression
	
	
	
	
	
	print( "CODE FOR QUESTION 3");
	// logical AND
	print( "logical AND");
	var a = 5;
	var b = 10;
	  
	if ( false && b++ > a) {
		print( "inside if"); // doesn't enter here
	}
	else {
		print( "inside else b is: $b"); // prints "inside else b is: 10", so the b++ operation isn't carried out due to short circuit
	}
	  
	if ( true && b++ > a) print( "b is $b"); // prints "b is 11", now b has been incremented because the second expression was evaluated
	  
	if ( a > 10 && boolFunc()) { // first expression is false, so boolFunc() is never called
		print( "inside?"); // this isn't printed
	}
	  
	if ( a < 10 && boolFunc()) { // first expression is true, so boolFunc() is called and prints "inside function"
		print( "inside."); // this is printed
	}
	  
	// logical OR
	print( "logical OR");
	a = 5;
	b = 10;
	if ( true || ++b > a) {
		print( "inside if b is: $b"); // prints "inside if b is: 10", as can be seen second expression isn't evaluated
	}
	  
	if ( false || ++b > a) {
		print( "inside second if b is: $b"); // prints "inside second if b is: 11", now second expression is evaluated
	}
	  
	if ( a < 10 || boolFunc()) { // first expression is true, so boolFunc() is never called
		print( "inside."); // this is printed
	}
	  
	if ( a > 10 || boolFunc()) { // first expression is false, so boolFunc() is called and prints "inside function"
		print( "inside."); // this is printed (boolFunc() returns true)
	}
	  
	// if-null operator
	print( "if-null operator");
	a = 5;
	b = 10;
	var y = a ?? ++b;
	print(y); // prints "5", a isn't null
	print(b); // prints "10", b wasn't incremented because of short circuiting
	var x = null ?? b++;
	print( x); // prints 10, because it is post increment
	print( b); // prints 11, because the second expression was evaluated due to the first one being null
	  
	var z = 3 ?? boolFunc(); // doesn't print "inside function" because boolFunc() isn't called
	print( z); // prints "3"
	  
	z = null ?? boolFunc(); // prints "inside function", second expression is evaluated since first one is null
	print( z); // prints "true" (boolFunc() returns true)
	  
	  
	  
	  
	  
	print( "CODE FOR QUESTION 4");
	var arr1 = [1,2,3,4,5,6,7];
	var index = 5;
  
	if ( arr1.length > index && arr1[index] == 6) { // short-circuit evaluation provides a way to first check if array length is bigger than a desired value
		print( "5th index exists!"); 				// the second expression is only evaluated if the first one is true
	}
  
	index = 10;
  
	if ( arr1.length > index && arr1[index] == 99) { // first argument is false, so second one is skipped
		print( "won't enter here");
	}
	else {
		print( "error avoided"); // due to short-circuit evaluation, out of bounds error is avoided
	}
  
	if ( arr1.length > 10 && boolFunc()) {
		// do something...
	} 	// since arr1.length is not bigger than 10, boolFunc() is never called
		// if boolFunc() was a complex function that required a lot of computations, doing the costly tasks it requires could've been avoided with short-circuit evaluation
		
		
		
	print( "CODE FOR QUESTION 5");
	var var1 = 100;
	var var2 = 10;
	for ( var i = 0; i < 5; i++) { 
	if ( var2 > 5 || var1++ > 100) { // second expression is never evaluated, so var1 is never incremented
      print( "var1 is $var1"); // prints "var1 is 100" 5 times
    }
  }
}