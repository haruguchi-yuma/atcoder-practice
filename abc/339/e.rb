# これは通らないWAのコード！！！！！！

n, d = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
min, max = a.minmax
b = a.tally
b.default = 0

res = a.count { |n| (min..(min+d)) === n }
ans = res

(min+1..max-d+1).each do |l|
  res -= b[l]
  res += b[l+d+1]
  ans = [ans, res].max
end

p ans

