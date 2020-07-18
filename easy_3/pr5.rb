def multiply(first_number, second_number)
  first_number * second_number
end

def power_to_n(number, n = 2)
  
  if n == 2
    return multiply(number, number)
  elsif n > 2
    counter = 2
    square = multiply(number, number)
    loop do
      square *= number
      counter += 1
      break if counter == n
    end
  end
  
  square
  
end
  
  
p power_to_n(5, 4) == 625
p power_to_n(-8, 4) == 4096


=begin

Pseudocode:

counter = 2

- Start loop
- multiply square * number
- counter increase by one
- break until counter == n
=end