=begin

PROBLEM
- Input: array of integers
- Output: integer

rules: 
    - Explicit Requirements
      - Write a method that takes array of integers as input:
        - Multiplies all numbers together
        - Divides result by the number of entries in the array
        - Prints the result rounded to 3 decimal places
      - Assume array is non empty
      - Print result
=end

def show_multiplicative_average(array)
  
  multiplication_average = array.reduce(:*) / array.size.to_f
  result = sprintf("%#.3f", multiplication_average.round(3))
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667