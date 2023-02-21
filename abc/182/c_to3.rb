n = gets.to_i.digits
k = n.size

(1..k).reverse_each do |i|
  n.combination(i) do |j|
    if j.sum % 3 == 0
      puts k - i
      exit
    end
  end
end

puts -1
