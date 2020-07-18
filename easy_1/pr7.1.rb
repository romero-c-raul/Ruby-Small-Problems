# Further exploration
def stringy(integer, alternate = 1)
  counter = 0
  binary_array = []

  until counter == integer
    if alternate == 0
      counter.even? ? binary_array << 0 : binary_array << 1
    else
      counter.even? ? binary_array << 1 : binary_array << 0
    end
    counter += 1
  end
  p binary_array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
p '-------------------'
puts stringy(6, 0) == '101010'
puts stringy(9, 0) == '101010101'
puts stringy(4, 0) == '1010'
puts stringy(7, 0) == '1010101'
