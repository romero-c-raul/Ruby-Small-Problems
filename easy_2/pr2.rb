=begin
input: integer(length and width in meters)
output: integer(area of room in square meters and feet)

1 square meter == 10.7639 square feet

Data structure: integers

Algorithm:
- Ask user to provide two numbers
- Calculate area in square meters
- Convert area in square feet
- Output both values

Pseudocode
- Ask user to provide input
- get length from user and convert to float
- get width form user and convert to float

- calculate square area using the two integers (length x width)
  - assign to variable: area_square_meters
- convert area_square_meters to square feet (multiply by 10.7639)
  -assign to variable: area_square_feet

- print area_square_meters
- print area_square_feet
=end

puts "Enter the length of the room in meters: "
length = gets.to_f
puts "Enter the width of the room in meters: "
width = gets.to_f

area_square_meters = length * width
area_square_feet = area_square_meters * 10.7639

puts "The area of the room is #{area_square_meters.round(3)} meters " + \
     "(#{area_square_feet.round(3)} square feet)."

