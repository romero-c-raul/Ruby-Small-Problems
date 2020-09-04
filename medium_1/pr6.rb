=begin

PROBLEM
- Input: String
- Output: Integer

rules:
    - Explicit rules:
      - Write a miniature stack and register based programming language
      - Implement commands listed in the problem description

DATA STRUCTURE
- Array

ALGORITHM
- Parse through given string
  - Identify numbers and commands:
    - Iterate through string and split string by spaces and add to a collection
      ex. '5 PUSH 3 MULT PRINT'
        - separate into '5', 'PUSH', '3', 'MULT', 'PRINT'

- Iterate through the collection:
  - If a number is encountered, add to register
  - If a command is encountered
    - break out of iteration and run command
  - Goal is to run command immediately as it is encountered, but wait until you find
    a command if only a number is encountered
  - Re-start the iteration from where you left off and repeat the same process
  
PSEUDOCODE
- Accept string (command_string)
- Initialize variable (command_collection = command_string.split) 
- Initialize variable (register = 0) 
- Initialize variable (stack = []) 
- Initialize variable (index_value = 0)
- Initialize variable (current_command = nil)

- Start a loop
  - Check value associated with command_collection[index_value]
    - If that value is a number, add to register
    - If that value is a command
      - Assign value to current_command
      - break out of loop
    - Increase index by 1
    
- Run command
  - have a case for every command: PUSH, ADD, SUB, MULT, ETC

- After running command, start loop again
- Break out of loop when the index_value >= size of command collection array
=end

def minilang(command_string)
  command_collection = command_string.split
  
  register = 0
  stack = []
  index_value = 0
  
  loop do
     current_command = nil
    
    loop do
      current_value = command_collection[index_value]
      
      if current_value.to_i.to_s == current_value # If current value is a number
        register = current_value.to_i
      else
        current_command = current_value
      end
      
      index_value += 1
      break unless current_command == nil
    end
    
    case current_command
    when "PUSH" then stack << register
    when "ADD" then register += stack.pop
    when "SUB" then register -= stack.pop
    when "MULT" then register *= stack.pop
    when "DIV" then register /= stack.pop
    when "MOD" then register %= stack.pop
    when "POP" then register = stack.pop
    when "PRINT" then puts register
    end
    
    break if index_value >= command_collection.size
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')


=begin
3 PUSH
20 ADD
7 SUB
