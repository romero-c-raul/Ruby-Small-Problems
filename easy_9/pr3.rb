=begin

ALGORITHM
- Return 0 if input integer is 0

- Determine if input integer is negative
  - If true, return integer as it is
  - If false, return integer * -1
=end

def negative(integer)
  integer > 0 ? integer * -1 : integer
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0   