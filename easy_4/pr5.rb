=begin

PROBLEM
- Get all multiples of 3 or 5 that are within the range of 1 and number given
- add up and output those numbers
- Assume number passed is integer > 1

EXAMPELS
- Given

DATA STRUCTURE
- integers
- strings
- arrays

ALGORITHM
- Given an integer
- Create a range from 1 to integer (including integer)
- Store numbers in that range in a collection
- Iterate through collection of numbers and select only the ones that
  are multiples 3 or 5
- Output the sum of all the numbers that are multiples of 3 or 5

PSEUDOCODE
- Accept an integer (given_number)

- Create a range of integers between 1..given_number
- Convert that range to an array of numbers (numbers_array)

- Iterate through numbers array and #select the ones that are multiples of 3
  and 5

- Sum all the elements of numbers_array that are left
- Return sum
=end

def multisum(integer)
  numbers_array = (1..integer).to_a
  
  numbers_array.select! do |number|
    number % 3 == 0 || number % 5 == 0
  end
  
  numbers_array.sum      
  #numbers_array.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168