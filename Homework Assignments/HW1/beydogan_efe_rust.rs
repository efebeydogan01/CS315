fn main() {
	println!( "CODE FOR QUESTION 1");
	let arr = [1, 2, 3, 4, 5];
    // arr["efe"] = 5; -> gives an error
    println!( "{}", arr[4]); // prints "5"
	
	println!( "CODE FOR QUESTION 2");
	let arr_q2 = [1, 2, 3, 4, 5];
    println!( "{}", arr_q2[3]); // legal
    // println!( "{}", arr_q2[7]); -> "index out of bounds: the length is 5 but the index is 7"
    // println!( "{}", arr_q2[-3]); -> also erroneous, doesn't support negative indices
	
	println!( "CODE FOR QUESTION 3");
	let arr_q3 = [1, 2, 3, 4, 5]; // subscripts are bound at compile time
    println!( "{}", arr_q3[3]); // legal and prints 4
    // println!( "{}", arr_q3[7]); -> "index out of bounds: the length is 5 but the index is 7"
    
    let arr3:[i32;3] = [0;3]; // the size of the array needs to be specified, subscripts are bound
    println!( "The array is: {:?}", arr3); // prints "The array is: [0, 0, 0]"
	
	println!( "CODE FOR QUESTION 4");
	let arr_q4 = [6, 7, 8]; // array without data type but fixed size and initialized
	println!( "The array is: {:?}", arr_q4); // prints The array is: [6, 7, 8]
		 
	let arr_q4_2:[i32;3] = [9, 10, 11]; // array with data type and again, fixed size
	println!( "The array is: {:?}", arr_q4_2); // prints The array is: [9, 10, 11]
		 
	let arr_q4_3:[i32;3] = [0;3]; // array with fixed size but initialized with default values
	// the size of an array needs to be specified when creating it
	println!( "The array is: {:?}", arr_q4_3); // prints The array is: [0, 0, 0]
		 
	let mut arr_q4_4:[i32;3] = [0;3]; // additionally, an array whose elements are mutable but still has fixed size
	println!( "The array is: {:?}", arr_q4_4); // prints The array is: [0, 0, 0]
	arr_q4_4[2] = 5; // legal
	println!( "The array is: {:?}", arr_q4_4); // prints The array is: [0, 0, 5]
	
	println!( "CODE FOR QUESTION 5");
	let rectangular_array:[[i32;3];2] = [[31;3];2];
    println!( "The array is: {:?}", rectangular_array); // prints: "The array is: [[31, 31, 31], [31, 31, 31]]"
    
    // let ragged_array = [[1, 2, 3], [1]]; -> not allowed
	
	println!( "CODE FOR QUESTION 6");
    let arr_q6 = [1, 2, 3]; // this is legal, and one of the correct ways of initializing an array
    println!( "The array is: {:?}", arr_q6); // prints [1, 2, 3]
    
    let arr_q6_2:[i32;3] = [1,2,3]; // another legal way of initializing
    println!( "The array is: {:?}", arr_q6_2); // prints [1, 2, 3] again
    
    let arr_q6_3 = [0;3]; // initializes every value to 0, no type specified
    println!( "The array is: {:?}", arr_q6_3); // prints [0, 0, 0]
    
    let arr_q6_4:[i32;3] = [0;3]; // initializes every value to 0, type is 32 bit integer
    println!( "The array is: {:?}", arr_q6_4); // prints [0, 0, 0]
	
	println!( "CODE FOR QUESTION 7");
	let arr_q7 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    println!( "The array is: {:?}", arr_q7); // prints: "The array is: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    
    let slice1 = &arr_q7[2..5]; // first index is inclusive, ending is exclusive
    println!( "The slice is: {:?}", slice1); // prints: "The slice is: [3, 4, 5]"
    
    let slice2 = &arr_q7[..3]; // ending index is exclusive, starts from the beginning of the array
    println!( "The slice is: {:?}", slice2); // prints: The slice is: [1, 2, 3]
    
    let slice3 = &arr_q7[4..]; // start index is inclusive, slices until the end
    println!( "The slice is: {:?}", slice3); // prints: The slice is: [5, 6, 7, 8, 9, 10]
	
	println!( "CODE FOR QUESTION 8");
	let mut arr_q8_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    arr_q8_1[5] = 39; // []= operator
    let arr_q8_2:[i32;3] = [33;3]; // [A;B] operator
    println!( "The array is: {:?}", arr_q8_2); // prints: The array is: [33, 33, 33]
    let slice = &arr_q8_1[3..7]; // &[] operator for slicing
    println!( "The slice is: {:?}", slice); // prints: The slice is: [4, 5, 39, 7]
	
	let arr_q8_3 = [1, 2, 3, 5, 5, 6, 7, 8, 9, 10]; // only difference between this array and arr_q8_1 is the "5" at the 3rd index
												// the relational operators compare two arrays depending on the first different character in both arrays
												// since 5 > 4, arr_q8_3 > arr_q8_1 and arr_q8_3 >= arr_q8_1 both evaluate to "true" down below
	println!( "{}", arr_q8_1 == arr_q8_3); // == operator, prints false
    println!( "{}", arr_q8_1 != arr_q8_3); // != operator, prints true
    println!( "{}", arr_q8_1 < arr_q8_3); // prints true
    println!( "{}", arr_q8_1 <= arr_q8_3); // prints true 
    println!( "{}", arr_q8_1 > arr_q8_3); // prints false
    println!( "{}", arr_q8_1 >= arr_q8_3); // prints false
}