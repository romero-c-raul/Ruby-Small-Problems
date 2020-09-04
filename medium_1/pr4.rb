require 'pry'
=begin

PROBLEM
- Input: integer
- Output: Array

rules:
    - Explicit rules:
      - Write a method that takes one argument 
        - Argument is total number of switches
      - Return array which lights are on after 'n' repetitions

problem domain:
  - First iteration turns everything on
  - second iteration toggles 2, 4, 6
  - third iteration toggles 3, 6, 9
  - fourth iteraiton toggles 4, 8, 12
  - fifth iteration toggles 5, 10, 15
  - etc...
  
DATA STRUCTURE
- Arrays

ALGORITHM
- Create a collection that represents the light switches

- Go through light switches 
  - Toggle switches that have a position divisible by current number (2, 3, 4, 5...)
  - Repeat this (number of light switches) times

- Go through light switches
  - Select the switch position of the switches that remained on
    and pass it to an array

- Return array indicating switches that remained on

PSEUDOCODE - TOGGLE SWITCHES
- SET Variable that determines index value = 0
- SET Variable that accounts for switch position (or switch number?) = 1
- SET Variable that accounts for current number = 2

- MAP through light switches (block parameter: current_switch)
  - Increase switch position by one
  - If the switch position % current number 
    - current_switch == 'ON' ? 'OFF' : 'TRUE'
  - Else
    - current_switch
  - End
=end

def thousand_lights(number_of_lights)
  light_switches = []
  
  1.upto(number_of_lights) do
    light_switches << 'ON'
  end

  current_number = 2
  
  until current_number > number_of_lights do 
    switch_position = 0
    light_switches.map! do |current_switch|
      switch_position += 1
      if switch_position % current_number == 0
        current_switch == 'ON' ? 'OFF' : 'ON'
      else
        current_switch
      end
    end
    
    current_number += 1
  end
  
  final_switches = []
  
  light_switches.each_with_index do |current_switch, index|
    final_switches << (index + 1) if current_switch == 'ON'
  end
  
  final_switches
end

p thousand_lights(5)
p thousand_lights(10)
p thousand_lights(1000)