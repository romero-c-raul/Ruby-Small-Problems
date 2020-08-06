=begin

PROBLEM
- input: array of strings
- output: array of strings

rules:
    - Explicit Requirements
      - Return array with same string values except (a, e, i, o, u)
      
    - Explicit requirements
      - Individual elements within array maintain their position

EXAMPLES
- Given

DATA STRUCTURE
- Array

ALGORITHM
- Iterate through every element in array
  - For each element, delete (or replace with 'nothing') the letters a, e, i, o, u

- Return transformed array

PSEUDOCODE
- Accept an array of strings

- Iterate through array of strings using map (we want transformation)
  - Use #tr or #gsub to replace vowels with nothing
  
- return new array
=end

def remove_vowels(array)
  
  array.map do |string|
    string.tr("aeiouAEIOU", '')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#or

# array.map do |string|
#   string.delete('AEIOUaeiou')
# end