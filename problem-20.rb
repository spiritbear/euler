def factorial_aps(n,prod)
  return prod if (n == 1)
  return factorial_aps(n-1,n * prod)
end

str = factorial_aps(100,1).to_s
p str.split('').inject(0) {|sum,x|  sum + x.to_i}