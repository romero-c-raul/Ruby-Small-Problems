=begin

PROBLEM
  - Input: string (several words)
  - Output: string

rules:
    - Explicit Rules
      - Write a method that takes a single string and 
        returns a new string that contains the original value of the argument with the
        first letter of every word capitalized, and all other letters lowecased
      - Assume that words are any sequence of non-blank characters

DATA STRUCTURE
- arrays

ALGORITHM
- Divide string into individual words
- Iterate through each word and capitalize first letter and lowercase rest
- Return capitalized string

PSEUDOCDE
- Accept a string (string)
- Create empty array (capitalized_words)

- Split string by spaces and iterate through each word
  - Capitalize each word and push to empty array
  
- Join capitalized_words with spaces
- Return capitalized_words
=end

def word_cap(string)
  capitalized_words = []
  
  string.split(" ").each do |word|
    capitalized_words << word.capitalize
  end
  
  capitalized_words.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'