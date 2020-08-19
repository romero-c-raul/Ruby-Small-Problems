=begin
# First Attempt
PROBLEM
- Input: string
- Output: array of strings

rules: 
    - Explicit Rules:
      - Write a method that returns a list of all substrings of a string
      - All substrings that start in position 0 should come first
      - The substrings at a given position should be returned in order from shortest to longest

DATA STRUCTURE
- String
- Array

ALGORITHM
- Go through input string
- Extract sequence of characters starting from index value 0, and add to a collection
  - First iteration extract 1 character starting from index value 0
  - Second iteration extract 2 characters starting from index value 0
  - Keep going until all string values after index value have been extracted

- Then extract sequence of characters starting from index value 1, and follow the same sequence
  as above:
  - First iteration extract 1 character starting from index value 1
  - Second iteration extract 2 character starting from index value 2 etc...

- Repeat this process until starting index value equal the last index value of string

PSEUDOCODE
- Accept string (string)
- Initialize empty array (sub_strings)
- Initialize variable (index_value) and assign value of 0

- Start a loop
  
  - num_of_characters = 1
  
  - Start loop
    - push string[index_value, num_of_characters] into the substring array
    - add 1 to num_of_characters
    - break when num_of_characters == string.size - index_value
  - End Loop
  
  - Increase index_value by 1
  - Break when index_value > string.size - 1
- End Loop
=end

def substrings(string)
  sub_strings = []
  index_value = 0
  
  loop do
    num_of_characters = 1
    
    loop do
      sub_strings << string[index_value, num_of_characters]
      break if num_of_characters == string.size - index_value
      num_of_characters += 1
    end
    
    index_value += 1
    break if index_value > string.size - 1
  end
  
  sub_strings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]