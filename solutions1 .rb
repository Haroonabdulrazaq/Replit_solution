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
    #setup head and tail
  
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
    
    #Get_node
    def get_node(index)
     current = @head
     
      index.times do
       current = current.next_node
      end
      
      return current
    end
    # Find a node before index
    # Create a temp to save the node after the current
    # Append new_node to the current node
    # Append the old node to the new_node
    
    #If index is zero
    #Save head.next_node in a temp
    #Append item_node to head
    #Append former_node to new_node
    def add_at(index, item)
      item_node = Node.new(item)
      if @head.nil?
        @head = Node.new(item)
        return @head.value 
      elsif index == 0
        temp = @head
        @head = item_node
        item_node.next_node = temp
      else
        current = get_node(index-1)
        former_node = current.next_node
        current.next_node = item_node
        item_node = current.next_node
        item_node.next_node = former_node
        return 
      end
    end
    
    
    #Loop from head till a node before
    # Get the node after index
    #Append the node after index to node before index
    def remove(index)
      if index == 0
        @head.next_node
      else
       before_index = index - 1
       current = @head
       
       before_index.times do
        current = current.next_node
       end
       
       remove_node = get_node(index)
       after_node = remove_node.next_node
       current.next_node = after_node
       return
      end
    end
    
  
    
  end
  
  list = LinkedList.new
   list.add(3)
   list.add(5)
   list.add_at(1,11)
   list.add_at(0,13)
   list.remove(0)
   puts list.get(0)
   puts list.get(1)
   puts list.get(2)
  # puts list.get(3)


  #Solution 1.3 
  #Implement Push and Pop for Stack
  # Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @tail =nil
    @head= nil
  end
  
  def push(number)
    new_node = Node.new(number,@tail)
    if @head.nil?
      @head = new_node  
      @tail = new_node 
    else
      @tail  = new_node
    end
  end
  
  def pop
   if @head.nil?
      return "Error, stack is Empty"
    else
      pop = @tail
      @tail = @tail.next_node
      pop.value
    end
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3


# Solution 1.3 
# Working on Queue
# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Queue
  def initialize
    @head = nil
    @tail = nil  
  end

  def add(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = @tail.next_node
    end
  end
  def remove
    if @head.nil?
      return -1
    else
      former_head = @head
      @head =  @head.next_node 
      former_head.value
    end
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1

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
    @min = @head # Setting back @min to head
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

def balanced_brackets?(string)
  str = string.gsub(/\w/, "")  # Global subtitution gsub
  strArr = str.split('')       # removed letters so we can concentrate on brackets

 return false if strArr.length.odd?  # check index if brackets are complete return false if not

 return false if strArr[0] == ')' || strArr[0] == '}' || strArr[0] == ']' # checking if the first bracket is a closing

 strArr.length.times do |i|  # Checking if the next bracket is followed by a wrong closed bracket Switch case in ruby
  case strArr[i]
    when '('
      if strArr[i + 1] == '}' || strArr[i + 1] == ']'
        return false
      end
    when '{'
      if strArr[i + 1] == ')' || strArr[i + 1] == ']'
        return false
      end
    when '['
      if strArr[i + 1] == ')' || strArr[i + 1] == '}'
        return false
      end 
    else
      return true
    end
  end
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false
puts balanced_brackets?('(')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true

def sliding_maximum(k, array)
  result =[]
  (array.length - (k-1)).times do |i| # The number of times it would loop
    newArr = array[i...(k+i)] # increament front and back with i 
    result.push(newArr.max)  # push into a new array and return that array
  end
 return result
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])


# Transposition Chanllenge
def transpose(string)
  str = string.split('')
  newArr =[]
  resultArr = []
  str.length.times do |i| 
    if str[i] == 'g'
      newArr.push(str[i])
    elsif str[i] == 'n'
      newArr.unshift(str[i])
    else
      resultArr.push(newArr) 
      newArr=[] # Empty out newArr so n mand g don't keep coming
      resultArr.push(str[i])
    end
  end
  resultArr.push(newArr).join('') # Pushing incase there is no other element in the str apart from n and g
  end
  
      puts transpose('he was searchign on Bign for signign kigns')
  # # => he was searching on Bing for singing kings
  
     puts transpose('rignadingdiggn!')
  # => ringadingdingg!
  
    puts transpose('gngngnnggnngggnnn')
  #=> nnnnnnnnngggggggg


  # Transposition Challenge Replit Solution

  def transpose(string)  # <====This solution was not done my me, this is replit solution
    # your code here
    while string.include?('gn')
      string.gsub('gn', 'ng')
    end
    
    string
  end
  
  puts transpose('he was searchign on Bign for signign kigns')
  # => he was searching on Bing for singing kings
  
  puts transpose('rignadingdiggn!')
  # => ringadingdingg!
  
  puts transpose('gngngnnggnngggnnn')
  # => nnnnnnnnngggggggg

  # Solving binarySeach with loop 
  def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
    numArr =[]
  number.times do |n|
    numArr.push(n+1)
  end
  numArr.each do |num|
    if (num*num) == number
      return num
    end
  end
  end
  
  puts sqrt(25)
  puts sqrt(7056)

  def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  # Solving Binary search with Recursion
  def sqrt_recursive(number, min_interval, max_interval)
    numberArr = (1..number).to_a
    midpoint = (min_interval + max_interval)/2 # Find the midpoint
    mid = numberArr[midpoint] ** 2  # Getting midpoint to the power of 2
    if mid == number  # Checking if the number is found
      return numberArr[midpoint] # return the number in the array if (found) condition is true 
    elsif mid > number  
      return sqrt_recursive(number, min_interval, midpoint -1 ) # Adjust the end point if the mid is greater
    elsif mid < number
      return sqrt_recursive(number, midpoint + 1, max_interval)  # Adjust the start point if the mid is less
    else
    "Number does not exist in the Array" # If min_interval (index) is greater than max_interval(index) then the target is not found 
                                           # <= Its not a mistake that the condition to check if it found or not
    end
  end
  puts sqrt(25)
  puts sqrt(7056)
  # sqrt_recursive(25, 0,25)
  # end
  # Get an Array using range (0...number).to_a
  # Set min_interval and max_interval as Start and End res
  # Set midpoint as (Start + End)/2
  # If midpoint*midpoint equals number return midpoint
  # else if midpoint*midpoint is greater than number
    # then Shift End to midpoint[index - 1]
    # then get midpoint again
  # else if midpoint*midpoint is less than number
    # then Shift Start to midpoint[index + 1]
    # then get midpoint again

    # Tower of Hanoi basic for 2 disk problem
    def move(starting, goal)
      intermediate = ([1,2,3] - [ starting, goal]).first
      result = move_text(starting, intermediate)+" "+
      result = move_text(starting, goal) +" "+
      result = move_text(intermediate, goal)
      return result
    end
    
    def move_text(from, to)
      "#{from}->#{to}"
    end
    
    puts move(1, 3)
    # => 1->2 1->3 2->3
    
    puts move(2, 3)
    # => 2->1 2->3 1->3

   # Add Model's Solution for Tower of Hanoi
    def move(starting, goal)
      # your code here
      intermediate = (1..3).find { |n| n != starting && n != goal }
      "#{starting}->#{intermediate} #{starting}->#{goal} #{intermediate}->#{goal}"
    end
    
    puts move(1, 3)
    # => 1->2 1->3 2->3
    
    puts move(2, 3)
    # => 2->1 2->3 1->3
    