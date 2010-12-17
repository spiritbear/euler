start_idx = 100
end_idx = 999
res = []
end_idx.downto(start_idx) do |outer_num|
  outer_num.downto(100) do |inner_num|
    product = outer_num * inner_num
    str_product = product.to_s
    if (str_product == str_product.reverse)
      res << product
    end  
  end
end

puts "The Maximum Product is #{res.max}" 