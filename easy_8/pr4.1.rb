# Second Attempt
def substrings(string)
  substrings = []
  
  0.upto(string.size - 1) do |starting_index|
    1.upto(string.size - starting_index) do |num_of_characters|
      substrings << string[starting_index, num_of_characters]
    end
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]