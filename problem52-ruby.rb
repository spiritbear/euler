# This problem basically reduces to finding the cyclic numbers
# The algoithm can be found here http://en.wikipedia.org/wiki/Cyclic_number

b = 10
p = 7
t = 0
r = 1 
n = 0

begin
  t = t + 1
  x = r * b
  d = x / p
  r = x % p
  n = n * b + d
end while(r != 1)

puts "The number is #{n}"

# Another Solution could be

class Fixnum
  def sorted_digits
    self.to_s.split(//).sort.join('')
  end  
end

n = 1000
loop do 
  str_num = n.sorted_digits
  break if str_num == (n*2).sorted_digits and 
  str_num == (n*3).sorted_digits and 
  str_num == (n*4).sorted_digits and 
  str_num == (n*5).sorted_digits and 
  str_num == (n*6).sorted_digits 
  n = n.next 
end

puts "The Number is #{n}" if (n != 1000)