factorials = {}
total = 0

def factorial_aps(num,result)
  if (num == 0)    
    return result
  end
  return factorial_aps(num-1,result * num)    
end

# Calculate Factorial of digits from 0 to 9
0.upto(9) do |digit|
  factorials[digit] = factorial_aps(digit,1)
end


3.upto(2_540_160) do |num|
  if (num == num.to_s.split("").map {|x| factorials[x.to_i]}.inject(0) {|x,sum| sum + x})
    total += num
  end
end

puts "The Total is #{total}"
