def count_ocurrences(vehicles)
  hash = {}

  vehicles.each do |element|
    if hash.include?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = %w[car car truck car SUV
              truck motocycle
              motocycle car truck]

count_ocurrences(vehicles)
