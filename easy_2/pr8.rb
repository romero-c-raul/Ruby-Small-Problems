=begin

input: integer greater than 0
output: integer (sum or product between 1 and entered integer)

Data structure:
range or array

Algorithm
- Ask user for integer greater than zero
- Create place to store range of numbers (1 to integer)
- Ask user if he wants to sum or multiply numbers stored in place
- Output result of either sum or product

Pseudocode:
-  Ask user to input integer greater than zero
- get integer from user (max integer)
- create new range from 1 to integer provided by user (max_integer_range)
- Ask user if he wants to add or multiply
- Get answer from user (sum_or_product)

-if sum, reduce array using addition operator
if product, reduce array using multiplication operator
=end

puts "Please enter an integer greater than 0: "
max_integer = gets.to_i
max_integer_range = (1..max_integer)

answer = ''

loop do
  puts "Enter 's' to compute sum, 'p' to compute the product"
  answer = gets.chomp.downcase
  break if (answer == 's' || answer == 'p')
  puts "Wrong input. Try again!"
end

if answer == 's'
  integer_sum = max_integer_range.reduce(:+)
  puts "The sum of the integers between 1 and #{max_integer} is #{integer_sum}."
elsif answer == 'p'
  integer_product = max_integer_range.reduce(:*)
  puts "The product of the integers between 1 and #{max_integer} is #{integer_product}."
end