=begin

PROBLEM
  - Input: 2 arguments (1st argument array, 2nd argument array)
  - Output: array
  
rules: 
    - Explicit Requirements
      - Write a method that takes two array arguments
        - Each array contains a list of numbers
        - Returns a new array that contians the product of every pair of numbers that can be formed
           between the elements of the two arrays
      - Results should be sorted in increasing value
      - Assume neither argument is an empty array

DATA STRUCTURE
- Array

ALGORITHM
- Take the first value of the first array, and multiply it against every value of the second array
  - Push every multiplied value into a new array
- Take the second value of the first array, and multiply it against every value of the second array
  - Push every multiplied value into a new array
- Keep repreating this process with all the values from the first array

PSEUDOCODE
- Accept two arrays: array1, array 1
- Initialize new empty array (all_values)

- Iterate through array1
  - Iterate through array 2
    - Multiply current value of array1 with current value of array two
    - Push this value into all_values array 

- Return all_values.sort
=end

def multiply_all_pairs(array1, array2)
  all_values = []
  
  array1.each do |array1_element|
    array2.each do |array2_element|
      all_values << array1_element * array2_element
    end
  end
  
  all_values.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
