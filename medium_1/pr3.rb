=begin

PROBLEM
- Inputs: integer
- Output: integer

rules
    - Explicit rules:
      - Write a method that performs maximum rotation:
        - rotate the first value, and fix first value in place
        - rotate the second value, and fix the first 2 values in place
        - rotate the third value, and fix the first 3 values in place
        - repeat until you reach second to last original value
    
    - Implicit rules:
      - single digit returns same digit
      - leading zeroes get dropped

DATA STRUCUTURE
- Arrays

ALGORITHM
- Push first integer to the end
- Push second integer to the end
- Push third integer to the end
- Keep going until there are no more digits to rotate

PSEUDOCODE
- Accept an integer
- Initialize a variable called index_value equal to zero
- Initialize a variable called digits_array equal to integer.to_s.char

- Start a loop
  - Initialize variable current_index equal to index_value
  - Initialize a variable current_digit; digits_array.delete_at(current_index)
  - Push current digit into digits array
  - Increase index_value by one
  - break when index_value equal to integer.digits.size - 1

- Return digits_array.join.to_i
=end

def max_rotation(integer)
  index_value = 0
  digits_array = integer.to_s.chars
  
  loop do
    current_index = index_value
    current_digit = digits_array.delete_at(current_index)
    digits_array << current_digit
    index_value += 1
    break if index_value >= integer.digits.size - 1
  end
  
  digits_array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(300000456)