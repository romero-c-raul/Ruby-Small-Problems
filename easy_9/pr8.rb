=begin

PROBLEM
  - Input: 2 arguments (integer, integer)
  - Output: array of integers

rules:
    - Explicit rules:
      - Create a method that takes two arguments
        - first argument is a count
        - second argument is the first number of a sequence
      - Method should return an array that contains the same number of elements,
        as the count argument
      - Values of each element will be multiples of starting number
      
    - Implcicit rules:
      - Assume count will be 0 or greater
        - If count is 0, return an empty list
      - Starting number can be any integer value
        - If starting number is 0, return array of 0s

DATA STRUCTURE:
- Arrays

ALGORITHM
- Determine my starting value 
- Determine my count
- Determine my current value
- Create a collection to store values

- Consider case when first argument is 0
- Consider case when second argument is 0

- Start a loop
  - Within loop. determine my current value
      - Initial current value will be equal to the starting value
    - Push my current value into a collection
    - Increase my current value by the starting value
    - Stop the loop once the size of my collection is equal to
      my first argument
-end loop


- Return my collection
=end

def sequence(count, first_number)
  starting_value = first_number
  current_value = starting_value
  sequence_count = []
  
  loop do
    break if sequence_count.size == count 
    sequence_count << current_value
    current_value += starting_value
  end
  
  sequence_count
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []