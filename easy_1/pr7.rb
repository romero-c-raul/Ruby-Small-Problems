def stringy(integer)
  counter = 0
  binary_array = []

  until counter == integer
    counter.even? ? binary_array << 1 : binary_array << 0
    counter += 1
  end
  binary_array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
