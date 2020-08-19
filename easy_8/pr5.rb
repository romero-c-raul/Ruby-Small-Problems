
def palindromes(string)
  substrings = []
  
  0.upto(string.size - 1) do |starting_index|
    1.upto(string.size - starting_index) do |num_of_characters|
      current_substring = string[starting_index, num_of_characters]
      next if current_substring.size == 1
      substrings << current_substring if current_substring.reverse == current_substring
    end
  end
  substrings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') #== [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]