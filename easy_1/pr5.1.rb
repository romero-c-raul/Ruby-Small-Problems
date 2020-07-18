def reverse_sentence(string)
  reverse_array = []

  string.split(' ').reverse_each do |element|
    reverse_array.push(element)
  end

  reverse_array.join(' ')
  p reverse_array
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
