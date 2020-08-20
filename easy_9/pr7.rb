def swap_name(string)
  final_name = []
  
  string.split.reverse_each do |element|
    final_name << element
  end
  
  final_name.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'