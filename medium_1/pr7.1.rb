# Using gsub
WORDS = %w[zero one two three four five six seven eigth nine]
DIGITS = (0..9).to_a

def word_to_digit(string)
  index_value = 0
  
  loop do
    current_word = WORDS[index_value]
    current_digit = DIGITS[index_value].to_s
    string.gsub!(current_word, current_digit)
    
    break if index_value >= 9
    index_value += 1
  end
  
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
