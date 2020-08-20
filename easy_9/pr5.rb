=begin

PROBLEM:
  Input: String
  Output: Boolean
  
rules:
    - Explicit rules:
      - Write a method that takes a string argument
        and RETURNS true if:
          - all alphabetic numbers inside string are uppercase
      - False otherwise
      - Ignore non alphabetic numbers
      
    - Implcit rules:
      - Empty string should return true

DATA STRUCTURE
- Array(?)
- String

Algorithm
- Get rid of non alphabetic characters, since they should be ignored

- Iterate through every character left (should be letters only):
  - check if all letters within the string are uppercase
    - Return true of all letters are uppercase, else return false
=end

def uppercase?(string)
  string = string.tr('^A-Za-z', "")
  string_characters = string.chars
  
  string_characters.all? do |char|
    char.upcase == char
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
  
  