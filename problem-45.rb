class Integer
  def traingular
    self * (self + 1) / 2
  end
  
  def pentagonal
    self * (3 * self - 1) / 2
  end
  
  def hexagonal
    self * (2 * self - 1)
  end
end

t,p,h = [],[],[]
1.upto(100000) do |x|
  t << x.traingular 
  p << x.pentagonal
  h << x.hexagonal
end

# all possibilities
poss = t & p & h
ans = poss.select {|x| x > 47055}
puts ans.first