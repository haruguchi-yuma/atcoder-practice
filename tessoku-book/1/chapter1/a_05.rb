n, k = gets.split.map(&:to_i)
cnt = 0

(1..n).each do |a|
  (1..n).each do |b|
    c = k - a - b
    cnt += 1 if (1..n).cover?(c)
  end
end

p cnt
