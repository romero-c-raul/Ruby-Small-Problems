=begin

PROBLEM
  - Input: string
  - Output: string
  
rules:
    - Explicit Requirements
      - Write a method that takes a string as an argument
        - Replace every uppercase letter in string with lowercase
        - Replace every lowercase letter in string with uppercase 
      - All other characters should be unchanged
      - You may not use #swapcase

DATA STRUCTURE
- Arrays (?)

ALGORITHM
- Iterate through each character in string
- If the character is a letter
  - If the letter is lowercase, it will be uppercased
  - If the letter is uppercase, it will be lowercased
- If the character is not a letter
  - Nothing will happen
  
PSEUDOCODE
- Accept a string
- Create a range of Uppercase Letters
- Create a range of Lowercase letters

- Map through each character of string
  - if the character is included in uppercase letters
    - character will be downcased
  - if the character is included in downcase letters
    - character will be uppercased
  else
    - character
=end

UPPERCASE_LETTERS = ('A'..'Z')
LOWERCASE_LETTERS = ('a'..'z')

def swapcase(string)
  
  new_string = string.chars.map do |character|
    if UPPERCASE_LETTERS.include?(character)
      character.downcase
    elsif LOWERCASE_LETTERS.include?(character)
      character.upcase
    else
      character
    end
  end
  
  new_string.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'