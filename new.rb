def leftmost_nodes_sum(array)
 sum = []
 i = 0

  loop do
    sum.push(array[i])
    i = (2 * i) + 1
    break if i > array.length
  end
  sum
end
# 5,3, 11, 10
puts leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])
# puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9, 4, 5, 7, 8, 1, 5])
# => 11
# Get the first element of the array
# Get the left must child and sum for half of the tree
                        #                 2
                        #           7             5    
                        #      2        6       0    9
                        #  4     5   7     8   1  5