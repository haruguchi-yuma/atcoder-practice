n, k = gets.split.map(&:to_i)

cnt = 0

(1..n).each do |red|
  (1..n).each do |blue|
    white = k - red - blue
    if 1 <= white && white <= n
      cnt += 1
    end
  end
end

p cnt
