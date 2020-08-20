#Solution 1.1

class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class LinkedList
    def initialize
      @head=nil
      @tail=nil
    end
  
    def add(number)
      new_node = Node.new(number)
      if @head.nil?
        @head = new_node
        return
      end
      
      current = @head
      until current.next_node.nil?  #until there is no more node
          current = current.next_node
      end
      current.next_node = new_node
    end
  
    def get(index)
     current =@head
      
     index.times do
       current = current.next_node
     end
     
      return current.value
    end
  end
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  list.add(8)
  list.add(7)
  
  puts list.get(0)
  puts list.get(2)
  # => 5