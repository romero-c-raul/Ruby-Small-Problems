=begin

PROBLEM
- Input: integer, integer (n digits)
- Output: integer

rules:
    - Explicit rules:
      - Write a method that can rotate the last "n" digits of a number
      - if n = 2, take the second to last number and send it to the end
      - if n = 3, take the third to last number and send it to the end
      - if n = 4, take the fourth to last number and send it to the end
      - ... etc, n = integer size sends the first number to the end
      - Assume n is always a positive integer

DATA STRUCTURE
- Arrays

ALGORITHM
- Determine the value of our second argument
- The second argument determines our second-argument-to-last value
- This second-argument-to-last value is the index value of the digit that
  will be send to the end of our number

- Remove the value from second-arguemnt-to-last value and
  move it to the end of the number

PSEUDOCODE
- Accept an integer (number)
- Accept an integer (index_value)

- Initialize variable negative_index; index value * -1
- Create a new stirng array

- Delete the value on string array that is located an index value
  negative_index, and assign to a new variable (rotated_value)

- Push rotated value to the end of the newly created string array
- Join string array and return
=end

def rotate_rightmost_digits(number, index_value)
  negative_index = index_value * -1
  string_array = number.to_s.chars
  
  rotated_value = string_array.delete_at(negative_index)
  
  (string_array << rotated_value).join.to_i
  
end
  
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917