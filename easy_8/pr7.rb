=begin

PROBLEM
  - Input: string
  - Output: string

rules:
    - Explicit rules:
      - Write a method that takes a string
        - and RETURNS a new string in which every char is doubled
    - Implicit rules:
      - Empty argument returns nothing
      - spaces are also duplicated

DATA STRUCTURE
- Array (split by character)
- String (#each_char)

ALGORITHM
- Go through each character in the string 
  - Take that character, repeat it, and add it to a collection
  - Do this to every character in the string
=end

def repeater(string)
  repeater = ''
  
  string.each_char do |char|
    repeater += char * 2
  end
  
  repeater
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''