ALPHABET = ("A".."Z").to_a + ('a'..'z').to_a
VOWELS = %w[a e i o u A E I O U]
CONSONANTS = ALPHABET - VOWELS

def is_a_consonant?(char)
  CONSONANTS.include?(char)
end

def double_consonants(string)
  repeater = ''
  
  string.each_char do |char|
    if is_a_consonant?(char) 
      repeater += char * 2
    else
      repeater += char
    end
  end
  
  repeater
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""