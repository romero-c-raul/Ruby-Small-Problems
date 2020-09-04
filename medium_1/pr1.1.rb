# Further Exploration

def rotate_array(array)
  array[1, array.size] << array[0]
end

def rotate_string(string)
  string_array = string.chars
  
  rotate_array(string_array).join
end

def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end

p rotate_integer(12345)