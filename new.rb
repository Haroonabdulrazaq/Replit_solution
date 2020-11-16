def sliding_maximum(k, array)
  result =[]
  (array.length - (k-1)).times do |i| 
    newArr = array[i...(k+i)]
    result.push(newArr.max)
  end
 return result
end

# puts sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
puts sliding_maximum(4, [9, 3, 5, 1, 7, 10])