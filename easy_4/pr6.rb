=begin

PROBLEM
- Will take in an array
- Will return an array w/ same number of elements
- Each element has the running total from the original array

EXAMPLES
- Given

DATA STRUCTURE
- Integers
- Arrays

ALGORITHM
- Go through array
- Add up running total at each element 
- Push that value into an array as we iterate

PSEUDOCODE
- Accept an array
- Create new empty variable (running total)
- Create new empty array (running_total_array)

- Iterate through our original array
  -  We will add current element of array to running total
    - Push running_total to running_total_array

- Return running_total_array
=end

def running_total(array)
  running_total = 0
  running_total_array = []
  
  array.each do |number|
    running_total += number
    running_total_array << running_total
  end
  
  running_total_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Launch School Solution

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end