=begin

PROBLEM
  Input: 2 array arguments
  Output: array
  
rules:
    - Explicit Requirements
      - Return array containing all of the values from the argument arrays
        - There should be no duplication of values in returned array

ALGORITHM
- Accept first argument array and second Argument array

- Combine arrays and assign to new variable
- Delete duplicate elements from array
=end

def merge(array1, array2)
  
  (array1 + array2).uniq
  
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]