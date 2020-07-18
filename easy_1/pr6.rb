def reverse_words(string)
  string_array = string.split

  if string_array.count == 1 && string.length >= 5
    return string.reverse!
  elsif string_array.count == 1 && string.length < 5
    return string

  else
    reverse_string =
      string_array.map do |element|
        if element.length >= 5
          element.reverse!
        else
          element
        end
      end
  end

  reverse_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('Walk')