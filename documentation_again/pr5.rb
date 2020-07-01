a = %w(a b c d e)

puts a.fetch(7)                     # We will print an index error since index 7 is out of bounds of the array
puts a.fetch(7, 'beats me')         # We will print beats me, since that is the default value, since index 7 is out of bounds
puts a.fetch(7) { |index| index**2 }   # wrong! ----> Will print index 1, 4, and then index error since next index values will be out of bounds ---> Wrong!!!!
                                    # If a block is given, then it will only be executed when index is out of bounds, so last a.fetch won't execute(argument error) --> Forgot to type 7 on last line
                                    # Line 5 will print 49, since it is only executed when index is out of bounds