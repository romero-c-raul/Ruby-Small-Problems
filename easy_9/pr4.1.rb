# Further exploration

def sequence(integer)
  (1..integer).to_a if integer > 0
  (integer..1).to_a.reverse if integer < 0
end

p sequence(-5) #== [1, 2, 3, 4, 5]
p sequence(-3) #== [1, 2, 3]
p sequence(-1) #== [1]

# Assuming integer will never be 0, else we need to account for that