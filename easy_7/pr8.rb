=begin

PROBLEM
  - Input: 2 arguments (1st argument array, 2nd argument array)
  - Output: Array

rules:
    - Explicit Requirements:
      - Write a method that takes two array arguments
        - Return a new array that contains the product of each pair of numbers from the arguments
          that have the same index
      - Assume arguments contain the same number of elements

DATA STRUCTURE:
- arrays

ALGORITHM
- Iterate through one array
  - for each element, multiply the current element and the element in the second array
    that has the same index number
  - push that multiplication total into a new array (or transform?)
=end

#First Attempt
# def multiply_list(array1, array2)
#   multiplication_total_array = []
  
#   array1.each_with_index do |current_integer, index|
#     multiplication_total_array << current_integer * array2[index]
#   end
  
#   multiplication_total_array
# end

def multiply_list(array1, array2)
  array1.each_with_index.map do |current_integer, index|
    current_integer * array2[index]
  end
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]