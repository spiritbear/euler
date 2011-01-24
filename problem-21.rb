table = {}
fin = []
gtotal = 0

def d(n)
  total = 1
  (2..Math.sqrt(n)).each {|i| (total += n / i + i) if (n % i == 0)}
  total
end

# n = 220
def amicable?(n,table)
  amicable_num = table[n]
  amicable_num = d(n) if amicable_num.nil?
  table[n] = amicable_num
  
  converse_num = table[amicable_num]
  converse_num = d(amicable_num) if converse_num.nil?
  table[amicable_num] = converse_num
  
  if ((n == converse_num) && (table[n] == amicable_num) && (converse_num != amicable_num))
    return true
  end  
  
  return false
end


100.upto(10000) do |num|
  if (amicable?(num,table))
    fin << num << table[num]
  end
end

p fin.uniq.inject(0) {|x,sum| sum + x}



