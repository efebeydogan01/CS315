void main() {
	print( "CODE FOR QUESTION 1");
	int listSize = 5;
	var list = new List(listSize); // creates a fixed size array 
	list[0] = 0; // initializing can only be done this way for fixed size arrays
	list[1] = 1; 
	list[2] = 2;
	list[3] = 3;
	list[4] = 4; // this would be the final legal statement for initializing elements
	             // this is (n-1), so 4 is the last integer from 0 that will be accepted as a subscript for this array
	// list[5] = 5; -> this statement will be illegal since list has a fixed size of 5
	
	
	print( "CODE FOR QUESTION 2");
	var growableListQ2 = [1,2,3]; // creates a growable list
	// print( growableListQ2[3]); -> gives an exception "Index out of range: index should be less than 3"
		 
	var fixedListQ2 = new List(3); 
	fixedListQ2[0] = 1; 
	fixedListQ2[1] = 2; 
	fixedListQ2[2] = 3; 
	// print( fixedListQ2[5]); -> this also gives an exception "RangeError: index (5) must be in the range [0..3)"
	
	
	print( "CODE FOR QUESTION 3");
	var fixedListQ3 = new List(3); // subscripts are bound to be [0, 3) and can't be changed at runtime
	fixedListQ3[0] = 3; // legal
	fixedListQ3[2] = 12; // legal
	print( fixedListQ3[1]); // prints "null" but it is legal
	// fixedListQ3.add( 4); -> this statement throws an exception since the fixed length array cannot be grown: "Cannot add to a fixed-length list"
	// fixedListQ3.removeAt(2) -> illegal, can’t remove an element from fixed length array
	
	var growableListQ3 = new List(); // creates a growable list
	// growableListQ3[0] = 5; -> throws an exception since the size of the array is 0, there are no elements in the array
	growableListQ3.add( 3); // a legal expression, since the list can be grown
	growableListQ3[0] = 2; // legal since the first element exists now
	growableListQ3.add(5);
	growableListQ3.add(10);
	// print( growableListQ3[5]); -> illegal, it is out of bounds
	growableListQ3.removeAt(1); // removes the element at index 1, which is 5. so the array can be shrunk

	var constListQ3 = const [10,11,12];
	// print( constListQ3[6]); -> error
	// constListQ3[1] = 1; -> this will cause an error, the const list is immutable

	
	print( "CODE FOR QUESTION 4");
	var fixedListQ4 = new List(3);
	print( fixedListQ4[0]); // prints "null"
	
	var growableListQ4 = new List();
	// print( growableListQ4[0]); -> error
	growableListQ4.add(9);
	growableListQ4[0] = 6; // now this can be done since an element has been added
	print( growableListQ4[0]); // after an element has been added, now the element at that index can be printed
	
	var constListQ4 = const [1,2,3];
	print( constListQ4[2]); // prints “3”
	
	
	print( "CODE FOR QUESTION 5");
	var rectangularList = [
		[31, 32, 33], 
		[34, 35, 36], 
		[37, 38, 39]
		];
	print( rectangularList); // prints [[31, 32, 33], [34, 35, 36], [37, 38, 39]]
	 
	var raggedList = [
	        [31], 
	        [34, 35], 
	        [37, 38, 39]
			];
	print( raggedList); // prints [[31], [34, 35], [37, 38, 39]]  
	
	
	print( "CODE FOR QUESTION 6");
	var fixedListQ6 = new List(3);
	fixedListQ6[0] = 3;
	fixedListQ6[1] = 9;
	fixedListQ6[2] = 13;
	
	var growableListQ6 = [1,2,3];
	growableListQ6[0] = 3;
	growableListQ6[1] = 9;
	growableListQ6[2] = 13;
	
	var generateList = new List<int>.generate(100, (i) => i + 1); // creates a list that contains elements [1,100]
	print( generateList);
	

	
	print( "CODE FOR QUESTION 7");
	List twoParam = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
	List twoParamSlice = twoParam.sublist(5, 10);
	print(twoParamSlice); // prints [6, 7, 8, 9, 10]  
	
	List oneParam = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
	List oneParamSlice = oneParam.sublist(3);
	print( oneParamSlice); // prints [4, 5, 6, 7, 8, 9, 10]


	print( "CODE FOR QUESTION 8");
	List<int> list1 = [49];
	List<int> list2 = [50, 51];
	List<int> list3 = list1 + list2;
	print( list3); // prints [49, 50, 51]
	print( list1 == list2); // prints false

}