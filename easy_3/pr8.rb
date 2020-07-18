# def palindrome?(string)
#   string.reverse == string
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# def array_palindrome?(array)
#   array.join == array.reverse.join
# end

# p array_palindrome?(['a', 'b', 'a'])
# p array_palindrome?([1, 0, 1])
# p array_palindrome?(['a', 'b', 'c'])

def array_or_string_palindrome?(element)
  begin
    element.reverse == element
  rescue
    element.join == element.reverse.join
  end
end

p array_or_string_palindrome?('madam') #== true
p array_or_string_palindrome?('Madam') #== false          # (case matters)
p array_or_string_palindrome?("madam i'm adam") #== false # (all characters matter)
p array_or_string_palindrome?('356653') #== true
p array_or_string_palindrome?(['a', 'b', 'a']) #== true
p array_or_string_palindrome?([1, 0, 1]) #== true
p array_or_string_palindrome?(['a', 'b', 'c']) #== false