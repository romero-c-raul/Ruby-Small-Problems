def multiply(first_number, second_number)
  first_number * second_number
end

def power_to_n(number, n)
  product = 1
  n.times { product = multiply(number, product) }
  product
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