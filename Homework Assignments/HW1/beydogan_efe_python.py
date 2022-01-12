import numpy as np

print ("CODE FOR QUESTION 1")
arrQ1 = np.array( [0, 3, 4, 5]) # creates an array
print( arrQ1[1]) # prints 3
print( arrQ1[1:2:3]) # prints [3] (slice)
print( arrQ1[...]) # prints [0 3 4 5] (ellipsis)
print( arrQ1[None]) # prints [[0 3 4 5]] (None keyword)
arrQ1_2 = np.array( [1,2,3])
print( arrQ1[arrQ1_2]) #prints [3 4 5], the elements at indices 1, 2 and 3, passing an integer array
arrQ1_3 = np.array( [True, False, False, True])
print( arrQ1[arrQ1_3]) # prints [0 5], only elements at first and last indices, passing a boolean array

print ("CODE FOR QUESTION 2")
arrQ2 = np.array( [0, 3, 4, 5]) # creates an array
print( arrQ2[3]) # prints 5
# print( arrQ2[7]) -> gives error "IndexError: index 7 is out of bounds for axis 0 with size 4"
print( arrQ2[-4]) # prints 3
# arrQ2[9] = 5 -> also gives error, can't initialize the ninth element in an array of size 4

print ("CODE FOR QUESTION 3")
arrQ3 = np.array( [31, 32, 33, 34]) # creates an array
print( arrQ3[3]) # prints 34
# print( arrQ3[6]) -> gives an error, can't access 6th index

print ("CODE FOR QUESTION 4")
arrQ4 = np.array( [31, 32, 33, 34]) # creates a fixed heap-dynamic array
print( arrQ4[3]) # prints 34
# size of the array cannot be changed, however individual elements may be changed
arrQ4[2] = 42 # this is legal
arrQ4.resize(2); # reduces the size of the array to two, in place
print( arrQ4) # prints [31 32]


print ("CODE FOR QUESTION 5")
rectangularArray = np.array( [[31, 32, 33], [40, 42, 43]])
print( rectangularArray) # [[31 32 33]
                         # [40 42 43]]
                   
raggedArray = np.array( [[31, 32], [40], [43, 44, 45]], dtype="object" )
print( raggedArray) # prints [list([31, 32]) list([40]) list([43, 44, 45])]

print ("CODE FOR QUESTION 6")
arrQ6 = np.array( [1, 2, 3]) # creates and initializes an array
arrQ6_2 = np.array( np.zeros) # creates an array and initializes every element to be zeros

arrQ6_3 = np.array( [x + 1 for x in range(100)]) # creates an array with elements [1, 100]
print( arrQ6_3)

print ("CODE FOR QUESTION 7")
arrQ7 = np.arange(10) # creates an array [0 1 2 3 4 5 6 7 8 9]
print( arrQ7) # prints [0 1 2 3 4 5 6 7 8 9]
print( arrQ7[3:7]) # prints [3 4 5 6]
print( arrQ7[1:9:2]) # prints [1 3 5 7]

arrQ7_2 = np.arange(24).reshape(2, 3, 4) # a multidimensional array
# [[[ 0  1  2  3]
#  [ 4  5  6  7]
#  [ 8  9 10 11]]
#
# [[12 13 14 15]
#  [16 17 18 19]
#  [20 21 22 23]]]

print( arrQ7_2[:, :, 0]) # this can be done to slice
# [[ 0  4  8]
#  [12 16 20]]

print( arrQ7_2[..., 0]) # gives the same outcome

print ("CODE FOR QUESTION 8")
arrQ8 = np.arange(10) # creates an array [0 1 2 3 4 5 6 7 8 9]
arr2 = np.arange(10,20) # [10 11 12 13 14 15 16 17 18 19]
print( arrQ8 + arr2) # adds every element elementwise, prints [10 12 14 16 18 20 22 24 26 28]
print( arrQ8 / 2) # prints [0.  0.5 1.  1.5 2.  2.5 3.  3.5 4.  4.5]
print( arrQ8 < arr2) # prints [ True  True  True  True  True  True  True  True  True  True]
print( arr2 ** 2) # prints [100 121 144 169 196 225 256 289 324 361]
print( arrQ8 * arr2) # prints [  0  11  24  39  56  75  96 119 144 171]
