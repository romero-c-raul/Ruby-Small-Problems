def sum_square_difference(integer)
  digits = []
  
  1.upto(integer) do |i|
    digits << i
  end
  
  square_digits = digits.map do |current_number|
    current_number ** 2
  end
  
  sum_square = digits.reduce(:+) ** 2
  square_sum = square_digits.reduce(:+)
  
  sum_square - square_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150