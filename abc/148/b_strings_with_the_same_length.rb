# シンプル
n = gets.to_i
a, b = gets.chomp.split.map(&:chars)

ans = ''
n.times do |i|
  ans += a[i] + b[i]
end

puts ans

# Rubyっぽい？
n = gets.to_i
puts gets.chomp.split.map(&:chars).transpose.map(&:join).join
