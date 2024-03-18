n = gets.to_i
q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
INF = 1001001001

ans = 0
q.max.succ.times do |x|
  y = INF
  n.times do |i|
    if q[i] - a[i] * x < 0 # 料理Aをx人分作れない場合
      y = -INF
    else
      y = [y, (q[i] - a[i] * x) / b[i]].min if b[i] > 0
    end
  end
  ans = [ans, x + y].max
end

p ans
__END__
2
800 300
100 100
200 10
