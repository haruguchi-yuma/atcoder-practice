n = gets.to_i
hashira = Array.new(n) { gets.split.map(&:to_i) }
exist = {}
hashira.each { |x, y| exist[[x, y]] = true }

ans = 0
hashira.combination(2) do |(x1, y1), (x2, y2)|
  a = x2 - x1
  b = y2 - y1

  if exist[[x1+b, y1-a]] && exist[[x2+b, y2-a]]
    ans = [ans, a ** 2 + b ** 2].max
  end
end

p ans

__END__
# 入力例
10
9 4
4 3
1 1
4 2
2 4
5 8
4 0
5 3
0 5
5 2
