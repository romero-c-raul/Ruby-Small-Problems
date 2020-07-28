# frozen_string_literal: true

#
# PROBLEM
# - Write method that determines string value of string
# - ASCII value is the sum of the ASCII values of every character
# ** String#ord determines ASCII value of character
#
# EXAMPLES
# - Given
#
# DATA STRUCTURE
# - Input: String
# - Output: Integer
# - Arrays(?)
#
# ALGORITHM
# - Go through every character in string
#   - Obtain ASCII value of each character
# - Sum all ASCII values obtained
#
# PSEUDOCODE
# - Accept a string (string)
# - Split string by characters and assign to array (string_array)
# - Create empty variable to store ascii value (ascii_value)
#
# - Iterate through string array
#   - obtain ascii value of element in array
#   - add ascii value to ascii_value variable
#
# return ascii_value

def ascii_value(string)
  ascii_value = 0

  string.each_char { |char| ascii_value += char.ord }

  ascii_value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

#Further Exploration
# char.ord.mystery == char
# answer: char.ord.chr == char
