# Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path: returns the string representation of the path --> This is a class method, as shown by "::"
# File#path: Returns the pathname used to create file as a string. Does not normalize the name. --> This is an instance method, as shown by "#"

# Class methods are called on class, while instance methods are called on objects

# Class method:
puts File.path("/ruby_folder/intro_programming") # Here we can see path was called on CLASS

#Instance 
puts File.new("testfile").path # Here we can see path was called on the object
