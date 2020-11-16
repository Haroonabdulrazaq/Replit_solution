def balanced_brackets?(string)
  str = string.gsub(/\w/, "")
  strArr = str.split('')

 return false if strArr.length.odd?

 return false if strArr[0] == ')' || strArr[0] == '}' || strArr[0] == ']'

 strArr.length.times do |i|
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