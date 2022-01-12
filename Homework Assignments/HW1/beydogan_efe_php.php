<?php
	echo "CODE FOR QUESTION 1\n";
    $arrQ1 = array( 1, 2, 3, 4, 5);
    echo $arrQ1[1]; // prints "2"
    echo "\n";
    echo $arrQ1{"1"}; // prints "2" as well
    echo "\n";
    $arrQ1["string"] = "str"; // legal statement
    echo $arrQ1["string"]; // prints "str"
    echo "\n";
    echo sizeof( $arrQ1); // prints 6, unlike JavaScript 
    echo "\n";
    echo $arrQ1[false]; // prints "1", false is evaluated to "0"
    echo "\n";
    echo $arrQ1[1.3]; // prints "2", casts to integer "1"
    echo "\n";
    $arrQ1[""] = 69;
    echo $arrQ1[null]; // prints 69 because null is cast to empty string ""
    echo "\n";

   	echo "CODE FOR QUESTION 2\n";
	$arrQ2 = array( 3, 4, 5, 6, 7);
	// echo $arrQ2[7]; -> gives error "Undefined offset: 7"
	// echo $arrQ2['efe']; -> gives error "Undefined index: efe"
	$arrQ2["efe"] = 21901548;
	echo $arrQ2{2}; // prints "5"
	echo "\n";
	echo $arrQ2["efe"]; // now prints 21901548
    echo "\n";
	$arrQ2[6] = 5; // this is legal, even though the 5th index doesn’t exist, 6th index can be initialized

    echo "CODE FOR QUESTION 3\n";
    $arrQ3 = array( 3, 4, 5, 6, 7);
	echo $arrQ3[3]; // prints 6
    echo "\n";
    $arrQ3[] = 31; // adding an element at the end of the array
    echo $arrQ3[5]; // prints 31
    echo "\n";
    echo sizeof( $arrQ3); // prints 6
    echo "\n";
    unset( $arrQ3[3]); // removes element at third index, which is 6
    echo sizeof( $arrQ3); // prints 5

    echo "CODE FOR QUESTION 4\n";
    $arrQ4 = array();
	$arrQ4[] = 1;
	$arrQ4[] = 5;
	$arrQ4[] = 19;
	foreach ( $arrQ4 as $value) {
	  echo $value;
	  echo "\n";
	} // prints every value that were added to the array

    echo "CODE FOR QUESTION 5\n";
    $rectangularArray = array (
    array(1,2,3),
    array(4,5,6),
    array(7,8,9)
    );
    
    var_dump( $rectangularArray); /* prints:
    array(3) {
    [0]=>
      array(3) {
        [0]=>
        int(1)
        [1]=>
        int(2)
        [2]=>
        int(3)
      }
      [1]=>
      array(3) {
        [0]=>
        int(4)
        [1]=>
        int(5)
        [2]=>
        int(6)
      }
      [2]=>
      array(3) {
        [0]=>
        int(7)
        [1]=>
        int(8)
        [2]=>
        int(9)
      }
    }
    */

      $raggedArray = array (
        array(1,2,3),
        array(4,5),
        array(7)
        );

      var_dump( $raggedArray); /* prints:
      array(3) {
      [0]=>
      array(3) {
        [0]=>
        int(1)
        [1]=>
        int(2)
        [2]=>
        int(3)
      }
      [1]=>
      array(2) {
        [0]=>
        int(4)
        [1]=>
        int(5)
      }
      [2]=>
      array(1) {
        [0]=>
        int(7)
      }
    }
      */

    echo "CODE FOR QUESTION 6\n";
    $arrQ6 = array();
    $arrQ6[3] = 5; // legal
    var_dump( $arrQ6);
    $arrQ6_2 = array(1,2,3);
    $arrQ6_2[2] = 33; // legal, can be initialized

    echo "CODE FOR QUESTION 7\n";
    $arrQ7 = array("efe", "emir", "eren", "arda", "kaan", "duru");
    print_r( array_slice( $arrQ7, 2)); // prints from the second index until the last
    print_r( array_slice( $arrQ7, 1, 3)); // prints from the 1st index and slices an array of length 3
    print_r( array_slice( $arrQ7, -1, 1)); // prints "duru"

    echo "CODE FOR QUESTION 8\n";
    $a = array( 1, 2, 3);
    $b = array( 3, 4, 5);

    $c = $a + $b; // union of $a and $b
    var_dump( $c);

    var_dump( $a == $b); // prints bool(false)
    var_dump( $a === $b); // prints bool(false)
    var_dump( $a != $b); // prints bool(true)
    var_dump( $a <> $b); // prints bool(true), this is the inequality operator, same as !=
    var_dump( $a !== $b); // prints bool(true)
?>