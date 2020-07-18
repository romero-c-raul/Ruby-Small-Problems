=begin

input: n/a
output: odd numbers from 1 to 99 (including 1 and 99)

Data Structure:
Array

Algorithm:
- Create place to store range of numbers
- Go through each number and print if it is even

Pseudocode:
- Create range from 1 up to and including 99 (range_to_99)
- Iterate through each element
  - next interation if element is divisible by 2 
  - print element if element is not divisible by 2

=end

(1..99).each do |number|
  if number % 2 == 0
    next
  else
    puts number
  end
end

