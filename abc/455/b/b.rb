h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
ans = 0

check = ->(y0, y1, x0, x1) {
  (y0..y1).each do |y|
    (x0..x1).each do |x|
      return false if s[y][x] != s[y0+y1-y][x0+x1-x]
    end
  end

  true
}

h.times do |y1|
  (y1+1).times do |y0|
    w.times do |x1|
      (x1+1).times do |x0|
        ans += 1 if check[y0, y1, x0, x1]
      end
    end
  end
end

p ans
