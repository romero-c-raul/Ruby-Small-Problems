=begin

PROBLEM
- Given array of integers 0..19
- Return array of integers sorted in alphabetical order (english language)

Rules: zero, one, two, three, four, five, six, seven, eight, nine, ten, 
       eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, 
       eighteen, nineteen

EXAMPLES
- Given

DATA STRUCTURE
- Array
- Hash

ALGORITHM
- Create hash using english words of numbers as keys, and equivalent integer as keys
- Create empty array
- Sort hash keys alphabetically
- Iterate though hash and push the values into empty array
- Return new array

PSEUDOCODE
- Accept array of numbers from 0..19
- Create empty array
- Create new array with written numbers in english zero..nineteen
- Merge both to create hash

-Iterate through hash
  - Push values into empty array
- Return array
=end

WRITTEN_NUMBERS = 
  "zero, one, two, three, four, five, six, seven, eight, 
  nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
  sixteen, seventeen, eighteen, nineteen".delete(",").split

def alphabetic_number_sort(array)
  sorted_array = []
  
  ordered_numbers = ((WRITTEN_NUMBERS.zip(array)).to_h).sort
  ordered_numbers.each { |num| sorted_array << num[-1] }
  
  sorted_array
end

p alphabetic_number_sort((0..19).to_a) == 
[
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]