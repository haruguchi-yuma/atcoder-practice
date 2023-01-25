# O(N^2) ループで見つけていく方法
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans1, ans2 = 0, 0

n.times do |i|
  ans1 += 1 if a[i] == b[i]
end

n.times do |i|
  n.times do |j|
    ans2 += 1 if i != j && a[i] == b[j]
  end
end

puts ans1, ans2

# Rubyっぽい書き方　O(N) ← 多分

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

c = a.zip(b).count { _1 == _2 }

puts c
puts (a & b).size - c
