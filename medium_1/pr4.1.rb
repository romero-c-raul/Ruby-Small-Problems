require 'pry'
# Joins numbers
def joinor(array, punctuation=",", conjunction='and')
  squares_available = []

  if array.size >= 3
    first_to_second_last_numbers = array[0..-2].join("#{punctuation} ")
    last_number = array[-1]
    squares_available << [first_to_second_last_numbers] << last_number
    squares_available.join("#{punctuation} #{conjunction} ")
  elsif array.size == 2
    array.join(" #{conjunction} ")
  else
    array.join
  end
end

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

#returns list of light numbers that are off
def off_lights(lights)
  lights.select { |_position, state| state == "off" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? "on" : "off"
    end
  end
end

# run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end
  
  p "Lights #{joinor(on_lights(lights))} are on"
  p "Lights #{joinor(off_lights(lights))} are off"
end

toggle_lights(1000)
