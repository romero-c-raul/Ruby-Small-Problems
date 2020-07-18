=begin
input: integer(length and width feet)
output: integer(area of room in square feet, square inches, square centimeters)

1 sq ft == 144 sq in
1 sq ft == 929.03 sq cm

Data structure: integers

Algorithm:
- Ask user to provide two numbers
- Calculate area in square ft
- Convert area in square feet to square inches and square cm
- Output all three values values

Pseudocode:
- Ask user to provide input
- get length from user and convert to float
- get width form user and convert to float

- calculate square area using the two integers (length x width)
  - assign to variable: area_square_ft
- convert area_square_ft to square inch (multiply by 144)
  -assign to variable: area_square_inch
- convert area_square_ft to square cm
  -assign to variable: area_square_cm

- print area_square_feet, area_square_cm, area_square_in
=end
# Further Exploration

SQFEET_to_SQINCH = 144
SQFEET_to_SQCM = 923.03 

puts "Enter the length of the room in feet: "
length = gets.to_f
puts "Enter the width of the room in feet: "
width = gets.to_f

area_square_ft = length * width
area_square_in = area_square_ft * SQFEET_to_SQINCH
area_square_cm = area_square_ft * SQFEET_to_SQCM

puts "The area of the room is #{area_square_ft.round(3)} square feet "
puts "(or #{area_square_in.round(3)} square inches)."
puts "(or #{area_square_cm.round(3)} square centimeters)."

