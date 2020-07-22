
def short_long_short(first, second)
  
  longest, shortest = first.size > second.size ? [first, second] : [second, first]
  shortest + longest + shortest
  
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"