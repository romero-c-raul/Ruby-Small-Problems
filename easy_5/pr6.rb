=begin

PROBLEM
- Given a string with one or more words (separated by a space)
- Return a hash
  - the number of words of diffent sizes

Rules:
      - Words consist of a string of characters that do not include
        a space

EXAMPLES
- Given

DATA STRUCTURE
- array
- hashes

ALGORITHM
- Split string by spaces creating an array
- Go through that array
  - Obtain the word count of each element
    - Turn word count into key w/value of 1 if it is not in hash
    - Increase value of key by one if it is in hash
- Return hash

PSEUDOCODE
- Accepting a string
- Split the string by spaces, creating an array (string_array)
- Create empty hash

- Iterate through string_array
  - obtain size/length of current element and assign to variable (word_count)
  - If word_count does not exist in hash as a key
    - Create a new key using word_count within hash with value equal 1
  - If word_count already exists in hash as a key
    - Increase word_count value by one
- Return hash
=end

def word_sizes(string)
  letter_counter = {}

  string.split(" ").each do |word|
    word_count = word.size
    if letter_counter.include?(word_count)
      letter_counter[word_count] += 1
    else
      letter_counter[word_count] = 1
    end
  end

  letter_counter
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
