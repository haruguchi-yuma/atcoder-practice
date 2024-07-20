# 集合 S から重複を許して整数 a,b を選ぶ。a+b の値のうち、M 以下である範囲での最大値を求めよ
n, m = gets.split.map(&:to_i)
pi = Array.new(n) { gets.to_i } + [0]

s = pi.repeated_permutation(2).map(&:sum).uniq.sort.reverse

ans = 0
s.each do |a|
  b = s.bsearch { |x| x < m - a}
  next if b.nil?
  ans = [ans, a + b].max
end

p ans


__END__
4 50
3
14
15
9

3 21
16
11
2
