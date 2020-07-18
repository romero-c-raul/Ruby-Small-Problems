# Launch School solution

def xor?(value1, value2)
  return true if value1 == true && value2 == false
  return true if value1 == false && value2 == true
  false
end

p xor?(5.even?, 4.even?) #== true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false