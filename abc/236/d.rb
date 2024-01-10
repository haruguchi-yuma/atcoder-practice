n = gets.to_i
n2 = n*2

A = Array.new(n2-1) { gets.split.map(&:to_i) }

def bfs(s, x)
  return x if s.empty?

  res = []
  i = s.min # 小さいものから選んでいく

  # 選んだものは除外してその他を選んでいく
  (s - [i]).each do |j|
    res << bfs(s - [i, j], x^A[i][j-i-1])
  end
  res.max
end

p bfs([*0...n2], 0)


__END__
2
4 0 1
5 3
2

