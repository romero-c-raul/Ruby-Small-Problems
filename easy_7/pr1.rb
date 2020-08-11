=begin

PROBLEM
  - Input: 2 arguments (1st argument: array, 2nd argument: array)
  - Output: array

rules:
    - Explicit Rules:
      - Write a method that combines the two arrays passed in as arguments
        - Return a new array that contains all elements from both array arguments,
          with the elements taken in alternation
      - Assume that both input arrays are non-empty, and that the have the same number
        of elements 

DATA STRUCTURE
- arrays

ALGORITHM
- Pass in two arrays as arguments into our method 
- Create an empty array and a counter to keep track of our iterations

- Create a loop
  - If our counter value is odd, push element from first array into new array
  - If our counter value is even, push element from second array into new array
  - Stop the loop when the counter is equal to the sum of sizes of the first and second arrays

- Return the new array
=end

def interleave(array1, array2)
  combination_array = []
  number_of_iterations = array1.size + array2.size
  counter = 1
  
  number_of_iterations.times do
    combination_array << array1.shift if counter.odd?
    combination_array << array2.shift if counter.even?
    counter += 1
  end
  
  combination_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
