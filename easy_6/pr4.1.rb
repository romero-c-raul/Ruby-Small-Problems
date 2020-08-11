# Launch School Solution

def reverse!(array)
  left_index = 0
  right index = -1
  
  while left_index < array.size / 2
    

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p list.object_id
reverse!(list) == ["c", "d", "e", "b", "a"]
p list #== ["c", "d", "e", "b", "a"]
p list.object_id

list = ['abc']
reverse!(list) == ["abc"]
p list == ["abc"]

list = []
reverse!(list) == []
p list == []