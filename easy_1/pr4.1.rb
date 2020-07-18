# Further Exploration
def count_ocurrences(vehicles)
  hash = {}
  
  vehicles = vehicles.map(&:downcase)
  
  vehicles.uniq.each do |element|
    hash[element] = vehicles.count(element)
  end
  
  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = %w[car car truck car SUV
              suv sUv truck motocycle
              motocycle car truck]

count_ocurrences(vehicles)
# car => 4
# truck => 3
# suv => 3
# motocycle => 2
