class Node
  attr_accessor :value, :next_node
  def initialize (value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @min = nil
  end

  def push(number)
    new_node = Node.new(number,@tail) # Have Node object that would hold reference to
    if @head.nil?                     # new minimum and former minimum
      @head = new_node
      @tail = new_node
      @min = @head if @min.nil?
    else
      @tail = new_node
      @current = @head
    end
  end

  def pop
    if @head.nil?
      return "Error, stack is Empty"
    else
      pop = @tail
      @tail = @tail.next_node
      # @min = @min.value > @tail.value ? @prev_min : @min
      pop.value
    end
  end

  def min
    count = 0
    puts "Current Node #{@current.next_node.nil?}"
    unless @current.next_node.nil?
      if @min.value <= current.value
        @min = current.value
      end
      count + 1
      current = current.next_node
    end
    puts "Counts #{count}"
    @min.value
  end
end

  stack = Stack.new
   stack.push(3)
   stack.push(5)
  #  puts "Minimum: #{stack.min}"
  
  # => 3

  #  puts "Popper #{stack.pop}"

      stack.push(7)
    # puts "Minimum: #{stack.min}"
# => 3

  stack.push(2)
  #  puts "Minimum: #{stack.min}"
# => 2

  # puts "Popper: #{stack.pop}"
  puts "Minimum: #{stack.min}"
# => 3


# if @prev_min.value < @min.value
#   return @prev_min.value
# else
#   return @min.value
# end
