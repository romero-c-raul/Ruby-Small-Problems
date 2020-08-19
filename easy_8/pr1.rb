=begin

PROBLEM
  - Input: Array (of integers)
  - Output: Integer

rules:
    - Explicit Requirements
      - Write a method that takes an array of numbers
        - and RETURNS the sum of sums of each leading subsequence for that array
      - Array always contains at least one number
    
    - Implicit Requirements
      - One element within array will be equal to that same element

DATA STRUCTURE
- Array

ALGORITHM
- Create a loop
  - First iteration will extract first element of array
  - Second iteration will extract first and second element of array
  - Third iteration will extract first, second, and third elements of array
  - All these "extractions" will be added to a collection
  - Loop will end when the elements added in the current iteration equal the inital
    size of the input array
    
- Go through each "extraction" within the collection, and add up the values within each "extraction"
- Go through up all the extraction values after they were summed up, and add them together
- Return total sum
=end

def sum_of_sums(array)
  sub_sequences_total = []
  starting_index = 0
  number_of_characters = 1
  
  loop do
    current_sub_sequence = array[starting_index, number_of_characters]
    sub_sequences_total << current_sub_sequence.reduce(:+)
    break if current_sub_sequence.size >= array.size 
    number_of_characters += 1
  end
  
  sub_sequences_total.reduce(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35