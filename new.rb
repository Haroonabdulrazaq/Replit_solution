class Node
  attr_accessor :value, :next_node
  def initialize(value)
    @value = value
  end
end

class Stack 
 def initialize
  @head = nil 
  @tail = nil
  @min = nil
 end

  def push(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = @tail.next_node
    end
  end

  def pop 
    if @head.nil? 
      "Error, Stack is Empty"
    else
      current = @head
      pop = @tail
      while current.next_node != @tail
        current = current.next_node
      end
       @tail = current
       @tail.next_node = nil
       pop.value 
    end
  end


  def min
    current = @head
    @min = @head
    until current.next_node.nil?
      current = current.next_node
      @min = current if @min.value > current.value
    end
      @min.value
  end
end

stack = Stack.new

stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min