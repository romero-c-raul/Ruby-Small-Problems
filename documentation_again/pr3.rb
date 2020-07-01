def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# According to ruby documentation (within methods section),
# Default values are okay as long as they are grouped together

# I think this code will throw an argument error, since 4 are required,
# but only 3 are given.
# The arguments are assigned in the order they are typed, so a, b, and c
# have a value assigned to them but d does not. ----> Wrong!

# If there are default values assigned, as long as the arguments given
# when calling the method, 
# meaning (arguments given + default values) = expected arguments then method 
# will work

# More info in https://ruby-doc.org/core-2.6.3/doc/syntax/calling_methods_rdoc.html