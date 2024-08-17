n, m = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }
cd = Array.new(m) { gets.split.map(&:to_i) }

ab.each do |a, b|
  ans = []

  cd.each do |c, d|
    ans << (a-c).abs + (b-d).abs
  end

  p ans.index(ans.min) + 1
end


