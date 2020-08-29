#Algorithm
#init_value is 3
#start_time is 1
#count down the init_time
#Increase the start_time
#If init_time is 1 double the init_time
#Keep doing until start_time == t
#return init_value

#MY CODE BUT NOT EFFICIENT FOR LARGE NUMBERS
# USE GEO-METRIC PROGREESION INSTEAD
def strangeCounter(t)
    init_value = 3
    start_time = 1
    temp = init_value
    loop_time =t-1
    loop_time.times do |i|
      init_value -= 1
      start_time += 1
      if init_value == 0
        init_value = temp * 2
        temp = init_value
      end
      
    end
    p "Init_value #{init_value}"
  end
  strangeCounter(10)