class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  # node = Node.new(node)
  # def insert(node)
  #   current = @root
    
  #   result = current
  #   until current.nil?  
  #     if node.data <= current.data
  #       current = current.left
  #       result += current
  #     elsif node.data > current.data
  #       current = current.right
  #       result += current
  #     end
  #   end
  # end

  def insert(new_node, head = @root)
    # base case: catch if the tree is empty
    if @root.nil?
      @root = new_node
      return
    end
    # it helps to break the recursion when you find the empty spot
    if head.nil?
      return new_node
    end
    # if the new node is less than the head, go to the left descendant
    if new_node.data < head.data
      head.left = insert(new_node, head.left)
    # if the new node is greater than the head, go to the right descendant
    elsif new_node.data > head.data
      head.right = insert(new_node, head.right)
    end
    # return the calculated head
    return head
  end


  def pre_order(node = @root)
    if node == nil
      return ''
    elsif node.data != nil 

    end
    result = "#{node.data}, "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"