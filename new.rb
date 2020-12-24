def binary_tree_height(array_tree)
  arr = []
  sum = 0
  height = 0
  i = 0
  array_tree.length.times do |i|
    if sum >= array_tree.length
      return height
    end
      sum += (2**i) 
      height += 1
  end
end

puts binary_tree_height([2, 4, 8, 0, 9, 6, 9])





