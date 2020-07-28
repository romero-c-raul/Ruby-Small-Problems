=begin

PROBLEM
- Input is a string of words separated by spaces
- Output is a string of words in which first and
  last letters of every word are swapped
  
Rules: 
      - Assume that every word contains at least one letter
      - String will always contain at least one word
Questions:
      - Do we have to handle special characters other than spaces?

EXAMPLES
- Given

DATA STRUCTURE
- Arrays

ALGORITHM
- Separate my string into individual words, 
  if word count is greater than 1
- Go through each word (if word count > 1) and identify 
  first letter and last letter
  - Replace first letter with last
  - Replace last letter with first
- Join words together and output string

PSEUDOCODE
- Accept a string of word(s) (string)
- Separate words into an array by spaces and assign to variable (words)

- Iterate through words array
  - Identify first letter and assign to variable (first_letter)
  - Identify last letter and assign to variable (last_letter)
  - Replace first letter in word with last letter
  - Replace last letter in word with first letter

- join words array with a space and return string
=end
# Using multiple assignment
def swap(string)
  words_array = string.split(" ")
  
  words_array.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  
  words_array.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'