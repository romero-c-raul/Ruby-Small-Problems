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
- Create new array (odd_elements)
- Iterate through each element of array
  - If array index is even, push to newly created array
  - else start next iteration
- return odd_elements array
- end method
=end

def oddities(array)
  odd_elements = []
  array.each_index do |index|
    odd_elements << array[index] if index.even?
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) # == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) # == [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []

def evens(array)
  even_elements = []
  array.each_index do |index|
    even_elements << array[index] if index.odd?
  end
  even_elements
end

p evens([2, 3, 4, 5, 6]) # == [2, 4, 6]
p evens([1, 2, 3, 4, 5, 6]) # == [1, 3, 5]
p evens(['abc', 'def']) #== ['abc']
p evens([123]) #== [123]
p evens([]) #== []