=begin

PROBLEM
  - Input: String (of word(s))
  - Output: Array of strings
  
rules:
    - Explicit rules:
      - Write a method that takes a string as an argument
        and RETURNS an array
        - Array returned contains:
          - Every word of string with space and word length appended
      - Assume words in string are separacted by exactly one space,
        and any substring of non space characters is a word

DATA STRUCTURE:
- Array

ALGORITHM
- Split up the words within the input string by space

- Go through each word
  - obtain word length
  - append the current word, a space, and the word count to an array
  - keep doing this until we have gone through all words
=end

def word_lengths(string)
  string_array = string.split(" ")
  
  string_array.map do |word|
    "#{word} #{word.size}"
  end
end  

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

=begin
iterate (#each), transform (#map), select (#select)
=end
