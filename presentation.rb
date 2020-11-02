  #Solution 1.2 
  #Implement Add_at and Remove Method
  class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end  

  class LinkedList
    def initialize
    @head = nil
    @tail = nil
    end

    def add(number)
        # your code here
        new_node = Node.new(number)
      
        if @head.nil?
          @head = new_node
          @tail = new_node
        else
          @tail.next_node = new_node
          @tail = new_node
        end
      end
    
      def get(index)
        #your code here
       current = @head
       
        index.times do
         current = current.next_node
        end
        
        return current.value
      end

    def get_node(index)
        current = @head
        
         index.times do
          current = current.next_node
         end
         
         return current
       end
#Loop to the node before
#create a link to the new node
#update the link fromthe new to the old node 0,4
#3->4->4->5->6->7
    def add_at(index, item)
        new_node = Node.new(item)
        if @head.nil?
            @head =  new_node
            @tail =  new_node
        elsif index == 0
            temp = @head
            @head =new_node
            new_node.next_node = temp
        else
            current_node = get_node(index)
           before_index = get_node(index -1)
           after_index  = current_node.next_node 
           before_index.next_node = new_node
           current_node = before_index.next_node
           current_node.next_node = after_index
        end
    end

    def remove(index)
    end
  end
    
  list = LinkedList.new
   list.add(3)
   list.add(5)
   list.add_at(1,11)
   list.add_at(0,13)
#    list.remove(0)
   puts list.get(0)
   puts list.get(1)
   puts list.get(2)
 # puts list.get(3)