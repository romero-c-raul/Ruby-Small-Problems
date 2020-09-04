=begin
#  Further Exploration

ALGORITHM
- Print the top half of the diamond
- Print the middle row of the diamond
- print the bottom half of the diamond

SUB ALGORITHM - Top half diamond

- Print 'n' amount of lines
  - Create an empty array with 'n' amount of elements
  - First line will be asterisk in the center
  - Second line will be asterisk -1 and + 1 from center

SUB ALGORITHM - Middle diamond
- Create an empty array with 'n' amount of elements
- First and last elements of array will have asterisk

SUB ALGORITHM - Bottom half diamond
- Print 'n' amount of lines
  - Create an empty array with 'n' amount of elements
  - First line will be asterisk 1 and -2
  - Second line will be asterisk 2 and -3
  = etc
=end
ASTERISK = '*'

def display_top_half_diamond(integer)
  top_half_array = []
  left_side = (integer / 2) - 1
  right_side = (integer / 2) + 1
  
  1.upto(integer / 2) do |iteration|
    current_row = Array.new(integer, " ")
    
    if iteration == 1
      current_row[integer / 2] = ASTERISK
      top_half_array << current_row
      next
    end
    
    current_row[left_side] = ASTERISK
    current_row[right_side] = ASTERISK
    
    top_half_array << current_row
    left_side -= 1
    right_side += 1
  end
  
  top_half_array.each do |row|
    puts row.join
  end
end

def display_middle_row_diamond(integer)
  row = Array.new(integer, " ")
  row[0] = ASTERISK
  row[-1] = ASTERISK
  puts row.join
end

def display_bottom_half_diamond(integer)
  bottom_half_array = []
  left_side = 1
  right_side = -2
  
  1.upto(integer / 2) do |current_iteration|
    current_row = Array.new(integer, " ")
    current_row[left_side] = ASTERISK
    current_row[right_side] = ASTERISK
    
    bottom_half_array << current_row
    left_side += 1
    right_side -= 1
  end
  
  bottom_half_array.each do |row|
    puts row.join
  end
end

def diamond(integer)
  display_top_half_diamond(integer)
  display_middle_row_diamond(integer)
  display_bottom_half_diamond(integer)
end

diamond(3)
diamond(5)
diamond(9)