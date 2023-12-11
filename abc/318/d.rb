n = gets.to_i
d = Array.new(n+1) { [0] * (n+1) }

(n-1).times do |i|
  gets.split.map(&:to_i).each_with_index do |n, j|
    d[i][i+1+j] = n
    d[i+1+j][i] = n
  end
end

n += 1 if n & 1 == 1

used = Array.new(n+1, false)
ans = 0

f = ->(w) {
  ans = [ans, w].max
  i = 0
  i += 1 while i < n && used[i]

  # 全部選び終わったらreturn
  return if i == n

  used[i] = true

  (i+1...n).each do |j|
    next if used[j]
    used[j] = true
    f[w+d[i][j]]
    used[j] = false
  end

  used[i] = false
}

f[0]

p ans
__END__
4
1 5 4
7 8
6

