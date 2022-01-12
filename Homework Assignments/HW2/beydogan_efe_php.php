<?php
	echo "CODE FOR QUESTION 1\n";
	var_dump( (bool) true); // bool(true)
	var_dump( (bool) True); // bool(true)
	var_dump( (bool) false); // bool(false)
	var_dump( (bool) FALSE); // bool(false)
	  
	var_dump( (bool) 0); // bool(false)
	var_dump( (bool) -0); // bool(false)
	var_dump( (bool) 0.0); // bool(false)
	var_dump( (bool) -0.0); // bool(false)
	var_dump( (bool) ""); // bool(false)
	var_dump( (bool) "0"); // bool(false)
	var_dump( (bool) []); // bool(false)
	var_dump( (bool) NULL); // bool(false)
	  
	var_dump( (bool) "efe"); // bool(true)
	var_dump( (bool) 31); // bool(true)
	var_dump( (bool) [1,2,3]); // bool(true)
	var_dump( (bool) NAN); // bool(true)
	
	
	
	
	
	
	
	
	echo "CODE FOR QUESTION 2\n";
	// logical AND
	var_dump( 1 && 0); // bool(false)
	var_dump( "" and 90); // bool(false)
  
	// logical OR
	var_dump( -0 || 78); // bool(true)
	var_dump( null or [1,2]); // bool(true)
  
	// null coalescence 
	var_dump( null ?? 3); // prints "int(3)", if the first operand is null, returns the second operand
	
	
	
	
	
	
	
	
	
	echo "CODE FOR QUESTION 3\n";
	function doSomething() {
		echo "inside\n";
		return true;
	}
	// logical AND
	echo "Logical AND \n";
	$a = 10;
	$b = 20;
	  
	if ( false && $b++ > $a) {
		// won't enter here
	 }
	else {
		var_dump( $b); // prints "int(20)", b is not incremented due to short-circuiting
	}
	  
	if ( true && ++$b > $a) var_dump( $b); // prints "int(21)", b is incremented
	  
	false && var_dump($b); // doesn't print anything, function is never called due to short short-circuiting
	true && var_dump( "called"); // prints "string(6) "called"", function is called because first operand is true
	  
	if ( false and $b++ > $a) {
		// won't enter here
	}
	else {
		var_dump( $b); // prints "int(21)", b is not incremented due to short-circuiting
	}
	  
	if ( true and ++$b > $a) var_dump( $b); // prints "int(22)", b is incremented
	  
	false and doSomething(); // doesn't print anything, function is never called due to short short-circuiting
	true and doSomething(); // prints "inside", function is called because first operand is true
	  
	// logical OR
	echo "Logical OR \n";
	$a = 10;
	$b = 20;
	  
	if ( true || ++$b > a) {
		var_dump( $b); // prints "int(20)", b is not incremented
	}
	  
	if ( false || $b++ > $a) var_dump( $b); // prints "int(21)", b is incremented this time
	  
	$temp = true || doSomething(); // doesn't call doSomething() method
	var_dump( $temp); // prints "bool(true)", result of the expression is assigned to temp
	false || doSomething(); // prints "inside", fuıction is called
	  
	$a = 10;
	$b = 20;
	  
	if ( true or ++$b > a) {
		var_dump( $b); // prints "int(20)", b is not incremented
	}
	  
	if ( false or $b++ > $a) var_dump( $b); // prints "int(21)", b is incremented this time
	  
	$temp = true or doSomething(); // doesn't call doSomething() method
	var_dump( $temp); // prints "bool(true)", temp is assigned the value of the first operand
	false or doSomething(); // prints "inside", fuıction is called
	  
	// null coalescence
	echo "null coalescent operator \n";
	$a = 10;
	$b = $a ?? $a++;
	var_dump( $b); // prints "int(10)", b is assigned to the value of $a
	var_dump( $a); // prints "int(10)", a wasn't incremented
	  
	$b = null ?? ++$a;
	var_dump( $b); // prints "int(11)", b is assigned to the value of $a + 1
	var_dump( $a); // prints "int(11)", a was incremented
	  
	$a ?? doSomething(); // doesn't print anything, method is not called
	null ?? doSomething(); // prints "inside", method is called because first operand is null
	
	
	
	
	
	echo "CODE FOR QUESTION 4\n";
	$arr1 = [31,32,33,34,35,36];
  
	if ( count($arr1) > 8 && $arr1[7]) {
		// won't enter here because array size is smaller than 8, but no error will be thrown due to short circuiting
	}
	  
	$doIt = false;
	  
	if( $doIt && doSomething()) { // if the boolean value $doIt is not true, doSomething() will never be called unnecessarily
		// do other stuff
	}
	
	
	echo "CODE FOR QUESTION 5\n";
	$x = 10;
	$bool = true;
	if ( $bool or $x++) { // second expression won't be evaluated here
		var_dump( $x); // prints "int(10)", x is not incremented
	}
	
	
?>