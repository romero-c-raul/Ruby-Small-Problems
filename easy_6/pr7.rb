=begin

PROBLEM
  input: array
  output: array with 2 elements
  
rules:
    - Explicit Requirements
      - Take argument and return two arrays as a pair of nested arrays
      - If the original array contains an odd number of elements, the middle 
        element should be placed in the first half array
    
    - Implicit Requirements
      - If there is only one element in argument array, return 
        the same array and an empty array
      - If there is an empty array as an argument, return two empty arrays
      
EXAMPLES
- Given

DATA STRUCTURE
- Array

ALGORITHM
- Determine if array size is even or odd

- Iterate through input array
  - Push element into first sub array if they are considered
    part of the first half 
  - Push element into second sub array if they are considered 
    part of the second half

- Push sub arrays into main array and return main array

PSEUDOCODE
- Accept an array of integers
- Initialize empty array (main_array)
- Initialize empty array (sub_array1)
- Initialize empty array (sub_array2)
- Initialize variable with value 1 (counter)

- Iterate through input array
  - Push current element into sub_array1 while counter <= array.size / 2
  - Else push into sub_array2

- Push sub_array1 and sub_array2 into main_array
- Return main array
=end

def halvsies(array)
  sub_array1 = []
  sub_array2 = []
  
  counter = array.size.even? ? 1 : 0
  
  array.each do |element|
    if counter <= array.size / 2
      sub_array1 << element
    else
      sub_array2 << element
    end
    counter += 1
  end
  
  [sub_array1, sub_array2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]