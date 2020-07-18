=begin

Input: array
Output: array with only every other element in it

Rules:
- Every other element are 1st, 3rd, 5th and so on (even index)

Data structure:
- Array

Algorithm:
- Create new array (maybe? depending on method)
- Go through every element of array
  - pick out only 1st, 3rd, 5th values and return in new array

Pseudocode:
- Define method with one paramenter (argument passed will be array)
- Create new array empty (odd_elements)
- create variable to determine index (index_value = 0)
- Start a loop
  - if array[index_value] is even push to odd_elements array
  - break when index_value = array.length - 1 
- Return odd_elements array
=end

def oddities(array)
  odd_elements = []
  index_value = 0
  
  until index_value > (array.length - 1) do
    odd_elements << array[index_value] if index_value.even?
    index_value += 1
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
