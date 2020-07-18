def sum(number)
  string_digits_array = number.to_s.chars
  integer_digits_array = string_digits_array.map(&:to_i)
  sum_array = integer_digits_array.sum 
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
