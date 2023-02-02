n, m = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }
cd = Array.new(m) { gets.split.map(&:to_i) }

ab.each do |x1, y1|
  puts (0...m).min_by {|i|x2, y2 = cd[i]; (x1 - x2).abs + (y1 - y2).abs } + 1
end
