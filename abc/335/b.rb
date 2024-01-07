n = gets.to_i

(0..n).each do |i|
  (0..n).each do |j|
    (0..n).each do |k|
      puts [i, j, k].join(' ') if i + j + k <= n
    end
  end
end
