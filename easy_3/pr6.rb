=begin

Input: 2 arguments
Output: Boolean

Rules: Only true if exactly only 1 value is true, false otherwise

Data Structure: Boolean

Algorithm:
- 2 numbers given
- True if first number is true and second number is false
- True if first number is false and second number is true
- Everything else is false

Pseudocode:

-Start method definition with two parameters (boolean1, boolean2)
  - If boolean1 is true and boolean 2 is false
    - true
  - If boolean 1 is false and boolean 2 is true
    - true
  - Else is false
- end method def
=end

def xor?(boolean1, boolean2)
  if boolean1 == true
    boolean2 == false
  elsif boolean2 == true
    boolean1 == false
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
