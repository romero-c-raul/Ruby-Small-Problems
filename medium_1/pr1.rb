# First Attempt
=begin

PROBLEM
- Input: Array
- Output: Array

rules:
    - Explicit rules:
      - Write a method that rotates an array
        - Moves the first element to the end of the array
      - Original array should not be modified
      - Do not use #rotate or rotate!
    
    Implicit rules:
      - A single element array should return the same array

DATA STRUCTURE
- Array

ALGORITHM
- Take the values inside the given array from index value 1 to index value -1
  and add them to a new array
- Take the first value of the given array and append it to the new array
=end

def rotate_array(array)
  array[1, array.size] << array[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
  
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]   