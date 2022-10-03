s = gets.chomp.chars
a = [0] * (s.size + 1)

s.size.times do |i|
  if s[i] == '<'
    a[i+1] = [a[i+1], a[i] + 1].max
  end
end

(s.size-1).downto(0) do |i|
  if s[i] == '>'
    a[i] = [a[i], a[i+1] + 1].max
  end
end

puts a.sum

# https://atcoder.jp/contests/agc040/tasks/agc040_a
