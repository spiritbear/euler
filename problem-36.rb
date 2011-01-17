class String
  def pallindrome?
    self == self.reverse
  end
end

vals = []
(1..1000000).each do |x|
  vals << x if (x.to_s.pallindrome?) and (x.to_s(2).pallindrome?)
end

p vals.inject(0) {|sum,x| sum + x}