=begin

PROBLEM
- Input: Integer
- Output: Series of strings

rules:
    - Explicit rules:
      - Write a method that displays a 4 pointed diamond
        - diamond will be displayed in an n x n grid
        - n is an odd integer (argument to the method)
        - Assume argument, 'n', will always be an odd integer
        
    - Implicit rules:
      - Middle row will be equal to length 9
      - First and last rows will always have 1 star only
      - Every row (except first and last) is a multiple of 3

DATA STRUCTURE
- Strings

ALGORITHM
- Print the top half of the diamond
- Print the middle row of the diamond
- print the bottom half of the diamond

SUB ALGORITHM - Top half diamond
- Print 'n' amount of lines
  - first line will be one ASTERISK
  - subsequent lines will be previous amount of asterisks + 2
  - Those asterisks will be centered with spaces

SUB ALGORITHM - Middle diamond
- Print 'n' amount of asterisks

SUB ALGORITHM - Bottom half diamond
- Print 'n' amount of lines
  - First line will be n - 2 asterisks
  - subsequent lines will be previous amount of asterisks minus 2
  - Those asterisks will be centered with spaces
=end

ASTERISK = '*'

def display_top_half_diamond(integer)
  asterisk_count = 1
  
  1.upto(integer / 2) do
    puts (ASTERISK * asterisk_count).center(integer)
    asterisk_count += 2
  end
end

def display_middle_row_diamond(integer)
  puts ASTERISK * integer
end

def display_bottom_half_diamond(integer)
  asterisk_count = integer - 2
  
  1.upto(integer / 2) do
    puts (ASTERISK * asterisk_count).center(integer)
    asterisk_count -= 2
  end
end

def diamond(integer)
  display_top_half_diamond(integer)
  display_middle_row_diamond(integer)
  display_bottom_half_diamond(integer)
end

diamond(1)
diamond(3)
diamond(9)