# Date is a Subclass of Object that includes the Comparable module 
# and easily handles date. 

require 'date' # to access standard library 'date', without this the rest of the code won't run
puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

puts Date.new(2016, 5, 13, Date::ITALY) 
