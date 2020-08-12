=begin
# First attempt

PROBLEM
  - Input: string 
  - Output: string
  
rules:
    - Explicit Requirements
      - Write a method that takes a string as an argument
        and returns a new string that contains the original value using a staggered
        capitalization string (every other character is capitalized, the rest are lowercase)
      - Characters that are not letters should not be changed, but
        count as characters when switching between upper and lowercase
    
    - Implicit Requirements
      - Sequence starts with first character being uppercase
      - Spaces, integers, and special characters count as a character

DATA STRUCTURE
- array (?)

ALGORITHM
- Go through each character in the string
  - First character will be uppercase, second character will be lowercase, third character
    will be uppercase...sequence continues
  - No changes should be made to spaces, numbers, or special characters
  
PSEUDOCODE
- Accept a string (original_string)
- Initialize an empty array (staggered_caps)
  
  - Split our string by characters and iterate through it w/index
    - push character.upcase to staggered_caps if index value is even
    - push character.downcase to staggered_caps if index value is odd

- Return our joined staggered_caps array
=end

def staggered_case(original_string)
  staggered_caps = []
  
  original_string.chars.each_with_index do |char, index|
    staggered_caps << char.upcase if index.even?
    staggered_caps << char.downcase if index.odd?
  end
  
  staggered_caps.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'