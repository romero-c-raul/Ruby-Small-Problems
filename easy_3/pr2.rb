=begin

Input: Two numbers (integers?)
Output: Result of different operations on those two numbers

Rules: 
- Division by 0 should not give an error message (since we are not validating)

Data Structure:
- Integers

Algorithm:
- Ask user for two numbers
- Print the result of addition, subtraction, product, quotient, reminder, and power

Pseudocode:
- Ask user for first number
- Get number from user (first_number)
- Ask user for second number
- Get number from user (second_number)

- Perform addition with given numbers
  - Print operation with result
- Perform subtraction with given numbers
  - Print operation with result
- Perform product with given numbers
  - Print operation with result
- Perform quotient with given numbers
  - Print operation with result
- Perform reminder with given numbers
  - Print operation with result
- Perform power with given numbers
  - Print operation with result

=end

def addition_operation(first_number, second_number)
  addition_result = (first_number + second_number).round(3)
  puts "==> #{first_number} + #{second_number} = #{addition_result}"
end

def subtraction_operation(first_number, second_number)
  subtraction_result = (first_number - second_number).round(3)
  puts "==> #{first_number} - #{second_number} = #{subtraction_result}"
end

def product_operation(first_number, second_number)
  product_result = (first_number * second_number).round(3)
  puts "==> #{first_number} * #{second_number} = #{product_result}"
end


def quotient_operation(first_number, second_number)
  if second_number == 0
    puts "Cannot divide by zero"
  else
    quotient_result = (first_number / second_number).round(3)
    puts "==> #{first_number} / #{second_number} = #{quotient_result}"
  end
end

def remainder_operation(first_number, second_number)
  if second_number == 0
    puts "Cannot do modulus operation by zero"
  else 
    remainder_result = (first_number % second_number).round(3)
    puts "==> #{first_number} % #{second_number} = #{remainder_result}"
  end
end

def power_operation(first_number, second_number)
  power_result = (first_number ** second_number).round(3)
  puts "==> #{first_number} ** #{second_number} = #{power_result}"
end

puts "==> Enter the first number: "
first_number = gets.to_f

puts "==> Enter the second number: "
second_number = gets.to_f

addition_operation(first_number, second_number)
subtraction_operation(first_number, second_number)
product_operation(first_number, second_number)
quotient_operation(first_number, second_number)
remainder_operation(first_number, second_number)
power_operation(first_number, second_number)