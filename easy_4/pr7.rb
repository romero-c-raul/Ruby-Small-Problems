=begin

PROBLEM
- Convert string into integer equivalent
- We will accept a string of digits
- Assume all characters are numeric
- Do not use any of the ruby standard methods 

EXAMPLES
- Given

DATA STRUCTURE
- Integer (output)
- String (input)
- Hash

ALGORITHM


PSEUDOCODE
- Accept string of numbers
- Create new empty array (ascii_value_array)

- Convert string of numbers to array and iterate through it
  - obtain ascii character from element and push to ascii_value_array
  
sum elements of ascii value array
=end

def string_to_integer(string)
  ascii_value = 0
  
  string.chars.each do |number|
    ascii_value += number.ord
  end
  
  ascii_value
end

p string_to_integer("150") == 150
p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570



