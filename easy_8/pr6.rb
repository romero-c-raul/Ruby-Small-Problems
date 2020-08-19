=begin

PROBLEM
- Input: 2 arguments (1st and 2nd arguments are integers)
- Output: String

rules
    - Explicit Requirements
      - Write a method that takes to arguments (first is starting number, second is ending number)
        - Print out all numbers between the two numbers
          - If a number is divisible by 3, print "Fizz"
          - If a number is divisible by 5, print "Buzz"
          - If a number is divisible by 3 AND 5, print "FizzBuzz"
    - Implicit Requirements
      - Print out all numbers means including first and last number

DATA STRUCTURE
- Array

ALGORITHM
- Create a collection to store "Fizz", "Buzz", "FizzBuzz", and Integer elements
- Create a range of numbers starting from first argument and ending in second argument
  - Go through each number within that range:
    - If a number is divisible by 3 AND 5, add "FizzBuzz" to collection
    - If a number is divisible by 3, add "Fizz" to collection
    - If a number is divisible by 5, add "Buzz" to collection
    - Else add current number to collection

- Join collection with a comma and space between each character
=end

def fizzbuzz(num1, num2)
  collection = []
  
  num1.upto(num2) do |current_num|
    if (current_num % 3 == 0 && current_num % 5 == 0)
      collection << "FizzBuzz"
    elsif current_num % 3 == 0
      collection << "Fizz"
    elsif current_num % 5 == 0
      collection << "Buzz"
    else
      collection << current_num.to_s
    end
  end
  
  collection.join(", ")
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz