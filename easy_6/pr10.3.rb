# Further Exploration 
# Right angle at any corner of grid
=begin

ALGORITHM
- Accept an integer and right angle corner

(Helper method 1)
- If right angle starts from top left corner/ top right
  - Start with first row = all asterisks
  - If we want top left corner
    - remove asterisk from the front and add a space in the end
  - If we want top right corner
    - remove asterisk from the end and add a space in the front

(helper method 2)
- If right angle starts from bottom left corner
  - First row is one asterisk plus (integer - 1) number of spaces
- If right angle starts from bottom right corner
  - First row is (integer - 1) number of spaces and one asterisk in the end

PSEUDOCODE

Helper method 1 - Method will be used if second argument is 1 or 2 
                  (top left or top right right angle location)

  - Accept an integer(size of triangle) as first argument, and another integer (right angle location) 
    as second argument
  
  - Initialize first_row variable = '*' * integer(first argument)
  
  - for integer(first argument) number of times:
    - current_row = first_row
    - print current row
    
    - If second argument is == 1
      - delete the last character in current row
      - prepend space
    - Else
      - delete the first character in current row
      - append space

Helper method 2 - Method will be used if second argument is 3 or 4
                  (bottom left or bottom right right angle location)

  - Accept an integer(size of triangle) as first argument, and another integer (right angle location) 
    as second argument
  
  - If second argument is == 3
    - first_row = '*' + ' ' * (integer - 1)
    
    for integer (first argument) number of times:
      - current_row = first row
      - print current_row
      - delete last character
      - prepend asterisk
  
  - Else
    - first_row = ' ' * (integer - 1) + '*'
    
    - for integer (first argument) number of times:
      - current_row = first row
      - print current_row
      - delete first character
      - append an asterisk
=end

def bottom_right_angle_triangle(integer, position)
  
  first_row = ''
  
  if position == 3
    first_row = '*' + ' ' * (integer - 1)
    
    integer.times do
      current_row = first_row
      puts current_row
      current_row[-1] = ''
      current_row.prepend('*')
    end
  
  else
    first_row = ' ' * (integer - 1) + '*'
    
    integer.times do
      current_row = first_row
      puts current_row
      current_row[0] = ''
      current_row << '*'
    end
  end
end


def top_right_angle_triangle(integer, position)
  first_row = '*' * integer
  
  integer.times do |number|
    current_row = first_row
    puts current_row
    
    if position == 1
      current_row[0] = ''
      current_row << ' '
    else
      current_row[-1] = ''
      current_row.prepend(" ")
    end
  end
end

def triangle(integer, position)
  if position == 1 || position == 2
    top_right_angle_triangle(integer, position)
  elsif position == 3 || position == 4
    bottom_right_angle_triangle(integer, position)
  else
    puts 'That is not a valid position!'
  end
end
  


triangle(5, 1)
triangle(5, 2)
triangle(5, 3)
triangle(5, 4)
triangle(5, 5)