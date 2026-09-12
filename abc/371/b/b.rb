n, m = gets.split.map(&:to_i)
ab = Array.new(m) { gets.chomp.split }
man = [false] * n

ab.each do |a, b|
  if b == 'M'
    if !man[a.to_i]
      man[a.to_i] = true
      puts 'Yes'
    else
      puts 'No'
    end
  else
    puts 'No'
  end
end
