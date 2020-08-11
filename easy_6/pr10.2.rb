# Further Exploration
# Upside Down Triangle

def triangle(integer)
  first_row = ''
  first_row << '*' * (integer)
  
  loop do
    current_row = first_row
    puts current_row
    
    break if current_row.count('*') == 1
    
    current_row.prepend(" ")
    current_row[-1] = ''
  end
end

triangle(5)
triangle(9)