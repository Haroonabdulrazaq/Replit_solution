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