=begin
ALGORITHM
- Create new array to store values

- Iterate through given array of sub arrays
  - Determine quantity of current sub array
  - Add the fruit type to a new array as many times as the quantity indicates
  - Do this for every sub array
=end

def buy_fruit(fruit_array)
  fruit_types = []
  
  fruit_array.each do |sub_array|
    sub_array[-1].times do
      fruit_types << sub_array[0]
    end
  end
  
  fruit_types
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]