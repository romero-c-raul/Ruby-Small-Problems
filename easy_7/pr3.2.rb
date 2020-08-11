# Third Attempt

def word_cap(string)
  string.downcase!
  
  capitalized_words = string.split(" ").map do |word|
    word.tr(word[0], word[0].upcase)
  end
  
  capitalized_words.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'