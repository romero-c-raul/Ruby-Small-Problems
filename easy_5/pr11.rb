=begin
- Returned string will be the same object as the one passed
  because each always returns the original array, which is the one being
  "joined" in the end
- To return desired reversed string, you need to invoke the original 
  string that was modified at the end of the 
  ---------------> wrong
- It will return the desired reversed string, since we mutated the original
  string, and that was what each returned.
=end

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end

# p spin_me("hello world")

# def spin_me2(str)
#   str.split.map do |word|
#     word.reverse
#   end.join(" ")
# end

# p spin_me2("hello world")

def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end
arr = ['hello', 'world']
p spin_me(arr)