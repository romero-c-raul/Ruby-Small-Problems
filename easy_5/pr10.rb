=begin
ALGORITHM
- Print line if line size > 74

PSEUDOCODE
- Have a string
- Create a loop
  - Extract first 74 characters and print
  - delete first 74 characters from original string
  - break when total size == 0

=end
# Further exploration
def print_in_box(string)
  
  
  if string.size <= 75
    string_line = "|" + " " + string + " " + "|"
    box_outer = "+" + "--" + ("-" * string.size) + "+"
    box_inner = "|" + "  " + (" " * string.size) + "|"
  else
    string_line = "|" + " " + string[0..74] + " " + "|"
    string_line2 = "|" + string[75..-1].center(77)  + "|"
    box_outer = "+" + "--" + ("-" * 75) + "+"
    box_inner = "|" + "  " + (" " * 75) + "|"
  end
  
  puts box_outer
  puts box_inner
  puts string_line
  puts string_line2 if string.size > 75
  puts box_inner
  puts box_outer
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("Hello World!")
print_in_box("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")