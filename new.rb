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
    newArr=[]
    resultArr.push(str[i])
  end
end
resultArr.push(newArr).join('')
end

    puts transpose('he was searchign on Bign for signign kigns')
# # => he was searching on Bing for singing kings

   puts transpose('rignadingdiggn!')
# => ringadingdingg!

  puts transpose('gngngnnggnngggnnn')
#=> nnnnnnnnngggggggg

# newArr = []
# str.length.times do |i|
#   if str[i] == 'g'
#     newArr.push(str[i]) 
#   elsif str[i] == 'n'
#     newArr.unshift(str[i])
#   else
#     newArr.push(str[i])
#   end
#  end

 
#  puts newArr.join()