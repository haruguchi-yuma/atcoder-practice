n = gets.to_i

(0..60).each do |i|
  (0..60).each do |j|
    if (2**i) * (3**j) == n
      puts 'Yes'
      exit
    end
  end
end


puts 'No'
