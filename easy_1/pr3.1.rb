# Bruteforce approach
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10) # This will divide number by 10, quotient will be assigned to number and modulus will be assigned to remainder
    digits.unshift(remainder) # This will send the remainder value to front of array (index 0)
    break if number == 0
  end
  digits
end

puts digit_list(12_345) == [1, 2, 3, 4, 5] # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
