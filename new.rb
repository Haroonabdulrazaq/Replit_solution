def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  if number == 1
    return "Not found"
  else
    numArr =[]
    number.times do |n|
      numArr.push(n+1)
    end
    if min_interval > max_interval
      return "Number not found"
    else
       mid_point = numArr.length/2
       start_point = numArr[0]
       end_point = numArr[-1]
    end
    puts mid_point
    puts start_point
    puts end_point
  end
end

 puts sqrt(25)
 #puts sqrt(7056)



# numArr =[]
# number.times do |n|
#   numArr.push(n+1)
# end
# numArr.each do |num|
#   if (num*num) == number
#     return num
#   end
# end