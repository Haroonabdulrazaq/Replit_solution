def sqrt(number)
  sqrt_recursive(number, 0, number)
end


def sqrt_recursive(number, min_interval, max_interval)
  numberArr = (1..number).to_a
  midpoint = (min_interval + max_interval)/2
  mid = numberArr[midpoint] ** 2
  if mid == number
    return numberArr[midpoint]
  elsif mid > number
    return sqrt_recursive(number, min_interval, midpoint -1 )
  elsif mid < number
    return sqrt_recursive(number, midpoint + 1, max_interval)
  else
    "Number does not exist in the Array"
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