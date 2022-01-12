print( "CODE FOR QUESTION 1")

print( 58 > 43) # True
print( 1 > 2) # False

print( bool(())) # False
print( bool([])) # False
print( bool({})) # False
print( bool("")) # False
print( bool(0)) # False
print( bool(None)) # False

print( bool("CS315")) # True
print( bool([1,2,3,4,5])) # True
print( bool((4,5,6))) # True
print( bool(69)) # True

print( True + True) # prints "2", True corresponds to the number 1




print( "CODE FOR QUESTION 2")
print( bool( 1 and 2)) # prints "True"
print( 1 and 2) # prints "2"
print( True and False) # prints "False"

print( bool( {} or [])) # prints "False"
print( {} or []) # prints []
print( True or True) # prints True

print( 1 < 2 < 3) # prints True (evaluated 1 < 2 and 2 < 3)
print( 2 < 1 < 3) # prints False 
print( 1 == 1 == 2) # prints False (evaluated 1 == 1 and 1 == 2)



print( "CODE FOR QUESTION 3")
def fun():
  print( "inside function")
  return True
  
print( "and operation")
a = 10
b = 20
c = False

if ( c and b / 0): # b / 0 operation won't be done because of short circuiting, so no error 
  b = 10 # won't enter here
else:
  print( "inside else") # this is printed
  

if ( c and fun()): # function is not called due to short circuiting
  a = 5 # not entered here
  
if ( a and fun()): # prints "inside function"
  print( "inside if") # this is printed

print( "or operation")
c = True
if ( c or a / 0): # due to short circuiting, second expression is not evaluated
  print( "inside if for or operation") # this is printed

if ( b or fun()): # fun() is not called here
  print( "function is not called") # this is printed

if ( False or fun()): # prints "inside function", because function is called
  print( "function is called") # this is printed

print( "comparison operators")
print ( 2 < 1 <  3 / 0) # prints False, last expression is not evaluated (2 < 1 and 1 < 3 / 0)




print( "CODE FOR QUESTION 4")
x = 32
y = 53
z = 0

if ( y > x or y / z < 3): # second expression is a division by 0, however due to short-circuiting no error will be generated
  print( "no error thrown")

list1 = [1,2,3,4,5]
z = 8
if ( z < len( list1) and list1[z] > 4): # no out of bounds error
  print( "index not out of bounds") # won't be printed since the value of z is out of bounds
  
if ( z > 100 and fun()): # fun() won't be called unnecesarrily if z is not greater than 100
  print( "do something...")
  



print( "CODE FOR QUESTION 5")
z = 190
 
def fun2():
  print( "inside fun2()")
if ( z > 100 or fun()): # fun() will not be called in this situation
  fun2() # prints "inside fun2()"
  # do something

