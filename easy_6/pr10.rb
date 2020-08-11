=begin

PROBLEM
  - Input: integer
  - Output: a series of asterisks that will create a right angle triangle
  
rules:
    - Explicit Requirements:
      - Take a positive integer as argument
        - Display a right angle triangle whose sides have n stars
      - Hypotenuse of the triangle should have one end at the lower-left
        of the triangle and the other at the upper right

Problem domain:
  - How is the triangle made up?
    - The base of the triangle will be equal to the integer that was passed
       as an argument 
    - The height of the triangle will also be equal to the integer that was
      passed as an argument
    - From bottom to top, one asterisk will be removed and replaced by a space

EXAMPLES:
- Given

DATA STRUCTURE:
- String

ALGORITHM
- Create a loop that prints the following: 
  - Print (integer - 1 amount of spaces for the first row) 
    with an asterisk as the end
  - For following iterations, delete the first space and add an 
    asterisk at the end of the row
  - Stop when the asterisk count of our row is equal to the integer
    passed as an argument

PSEUDOCODE
- Accept an integer (integer)
- Initialize variable (first row)
  that contains a string of (integer - 1 spaces) and an asterisk in the end

- Start a loop
  - Stop when the asterisk count in current row variable is equal to the integer
    passed as an argument
  - Create a variable current row that is assigned the value of first row
  - Print variable current row
  - Delete first character in row
  - Push an asterisk at the end of the string
=end

def triangle(integer)
  first_row = ''
  first_row << ' ' * (integer - 1)
  first_row << '*'
  
  loop do
    current_row = first_row
    puts current_row
    
    break if current_row.count('*') >= integer
    
    current_row[0] = ''
    current_row << '*'
  end
end

triangle(5)
triangle(9)