=begin
ALGORITHM
- Print first 74 characters in string
- Print remaining characters in next line (max 74)
  until all characters in string have been printed

PSEUDOCODE
- Have a string
- Create a loop
  - Extract first 74 characters and print
  - delete first 74 characters from original string
  - break when total size == 0

=end
# Further exploration
def print_text_string(string)
  if string.size < 76
    puts "|" + string.center(string.size + 2) + "|"
    
  else
    loop do
      puts "|" + string[0..75].center(78) + "|"
      string.slice!(0, 76)
      break if string.size == 0
    end
  end
end

def print_box_outer(size)
  if size >= 76
    puts "+" + "--" + ("-" * 76) + "+"
  else
    puts "+" + "--" + ("-" * size) + "+"
  end
end

def print_box_inner(size)
  if size >= 76
    puts "|" + "  " + (" " * 76) + "|"
  else
    puts "|" + "  " + (" " * size) + "|"
  end
end

def print_in_box(string)
  string_size = string.size

  print_box_outer(string_size)
  print_box_inner(string_size)
  
  print_text_string(string)
  
  print_box_inner(string_size)
  print_box_outer(string_size)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("Hello World!")
print_in_box("\"Taking responsibility - practicing 100 percent responsibility every day - is about seeing ourselves not as right or wrong, but as an agent, chooser, problem solver, and learner in the complex interrelationships of our lives so that we can better integrate with the people and world around us. When we do this, we enjoy a better and more productive way to live and lead.\"")