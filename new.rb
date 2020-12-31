class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, i = 0)
	return nil if i >= array.length || array[i] == 0
	
	node = Node.new(array[i])
	node.left = array_to_tree(array, 2*i+1)
	node.right = array_to_tree(array, 2*i+2)
	
	node
end

  def search_tree?(array)
	  root = array_to_tree(array)
   
    search_helper(root) 
  end

  def search_helper (node, min = nil, max = nil)
  return true if node.nil?
  return false if min && node.data < min
  return false if max && node.data > max
  search_helper(node.left, min, node.data) && search_helper(node.right, node.data, max)
end


 puts search_tree?([20, 10, 27, 12, 14, 23, 30])
# => false