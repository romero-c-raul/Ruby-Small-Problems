def center_of(string)
  number_of_characters = string.size
  string_index = number_of_characters / 2
  
  if number_of_characters.odd?
    string[string_index]
  else
    starting_point = string_index - 1
    string[starting_point, 2]
  end
end  

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'