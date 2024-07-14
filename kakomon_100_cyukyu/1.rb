n, x = gets.split.map(&:to_i)
_ = gets
p n, x
ans = 0

(1..n).each do |i|
  ((i+1)..n).each do |j|
    ((j+1)..n).each do |k|
      ans += 1 if i + j + k == x
    end
  end
end

p ans
