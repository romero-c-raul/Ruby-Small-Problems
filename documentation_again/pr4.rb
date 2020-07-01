a = [1, 4, 8, 11, 15, 19]

value = a.bsearch do |number|
      number > 8
    end
    
puts value