=begin

Input: 6 numbers (integer?)
Output: String indicating if 6th number appears amongst the first 5 numbers

Questions: 
- Float or just integers? What about negative numbers? 

Data Structure: 
- Integers and Array

Algorithm:
- Ask user for 6 numbers (no decimals allowed, only integers)
- Store first first numbers in a place
- Check if sixth number appears amongst the first 5 numbers
- Display result (6th number is among other numbers yes or no)

Pseudocode:

- Create empty array (first_five_num)

- Ask user for first number
  - Get number from user (first_integer)
  - push to empty array
- Ask user for second number
  - Get number from user (second_integer)
  - push to empty array
- Ask user for third number
  - Get number from user (third_integer)
  - push to empty array
- Ask user for fourth number
  - Get number from user (fourth_integer)
  - push to empty array
- Ask user for fifth number
  - Get number from user (fifth_integer)
  - push to empty array
- Ask user for last number
  - Get number from user (last_integer)

- Check if last_integer is included in first_five_num
  - if true print that last_integer appears in first_five_num
  -if false print that last_integer does not appear in first_five_num

=end

first_five_num = []

puts "Enter the 1st number: "
first_integer = gets.to_i
first_five_num << first_integer

puts "Enter the 2nd number: "
second_integer = gets.to_i
first_five_num << second_integer

puts "Enter the 3rd number: "
third_integer = gets.to_i
first_five_num << third_integer

puts "Enter the 4th number: "
fourth_integer = gets.to_i
first_five_num << fourth_integer

puts "Enter the 5th number: "
fifth_integer = gets.to_i
first_five_num << fifth_integer

puts "Enter the last number: "
last_integer = gets.to_i

if first_five_num.include?(last_integer)
  puts "The number #{last_integer} appears in #{first_five_num}."
else
  puts "The number #{last_integer} does not appear in #{first_five_num}."
end

=begin
Additional things that can be done:
  - validate each integer
  - ask if you want to start over