=begin
- Input: Array
- Ouput: Array

rules
    - Explicit rules
      - Write a method that takes an array as an argument,
        and sorts the array using the bubble sort algorithm just described
        
DATA STRUCTURE
- Arrays

ALGORITHM
- Start a loop
  - Make a copy of current array

  - Go through array elements two at a time (0 and 1 1st iteration)
    - Compare if first element is greater than second element
      - If true, swap first element with second element
      - If false, keep as is
    - Continue with next two elements (1 and 2 2nd iteration)
    
    - Stop when you reach the last two elements (first element index
      is equal to the array size - 2 )
      
  - Break out of loop when mutated array is equal to current array

SUB-PROCESS - Go through array 
- Initialize an index variable equal to 0

- Start a loop 
  - Obtain array values 1st and second: array[index, 2]
  - If first value is greater than second
    - array[index], array[index + 1] = array[index + 1], array[index]
  - increase index variable by 1
  - Break out of loop when index variable > array.size - 2

PSEUDOCODE
- Accept array (array)
- Initialize variable (index)

- Start a loop
  - Create a copy of current array
  - Initialize an index variable equal to 0

  - Start a loop 
    - Obtain array values 1st and second: array[index, 2]
    - If first value is greater than second
      - array[index], array[index + 1] = array[index + 1], array[index]
    - increase index variable by 1
    - Break out of loop when index variable > array.size - 2
  
  - Break out of loop when array is equal to copy of array

- Return original array
=end

def bubble_sort!(array)
  loop do
    array_copy = array.map { |element| element }
    index = 0
    
    loop do
      first, second = array[index, 2]
      
      if first > second
        array[index], array[index + 1] = array[index + 1], array[index]
      end
      
      index += 1
      break if index > array.size - 2
    end
    
    break if array == array_copy
  end
  array
end

p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)