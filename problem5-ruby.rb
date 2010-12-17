# Eulers Algorithm for Finding GCD
def gcd(a,b)
  return a if (b == 0)
  return gcd(b, a % b)
end

product = 1
(1..20).to_a.each do |num|
  gcdvalue = gcd(product,num) if (product >= num)
  gcdvalue = gcd(num,product) if (product < num)
  # Find The LCM of the current number and the LCM of all numbers seen till now
  lcm = (product * num) / gcdvalue
  #Propogate that as the value of the product for next loop
  product =  lcm
end

p product


