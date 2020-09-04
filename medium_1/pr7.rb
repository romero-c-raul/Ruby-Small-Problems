=begin

PROBLEM
- Input: String
- Output: String

rules:
    - Explicit rules:
      - Write a method tha takes a sentece string as input
         and RETURNS the same string with any sequence of numbers written as words
         converted to a string of digits

DATA STRUCTURE
- Hash
- Array (?)

ALGORITHM
- Go through each word in the input array
  - If the word is a number represented by a word (zero, one, two, etc)
    - turn it into a digit
  - Else
    - do nothing, keep the word as it is

PSEUDOCODE
- Accept a string (string)
- Initialize array (words) that points to a collection zero...nine
- Initialize array (digits) that poitns to a collection 0..9

- Initialze a hash using words as keys and digits as values

- Iterate (map?) through the split string
  - if the word is within the keys of the hash
    - replace with digit
  -else
    - keep the same word
=end

WORDS = %w[zero one two three four five six seven eigth nine]
DIGITS = (0..9).to_a

def word_to_digit(string)
  words_and_digits = (WORDS.zip(DIGITS)).to_h
  new_string = []
  string.split.each do |current_word|
    new_current_word = current_word
    new_current_word = current_word[0..-2] if current_word.include?(".")

    if WORDS.include?(new_current_word)
      new_word = words_and_digits[new_current_word].to_s
      new_word += "." if current_word.include?(".")
      new_string << new_word
    else
      new_string << new_current_word
    end
  end
  
  new_string.join(" ") + "."
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
