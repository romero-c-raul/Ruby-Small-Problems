def leading_substrings(string)
  sub_strings = []
  starting_point = 0
  num_of_characters = 1
  
  loop do
    current_substring = string[starting_point, num_of_characters] #slice method
    sub_strings << current_substring
    break if current_substring.size >= string.size
    num_of_characters +=1
  end
  sub_strings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']



