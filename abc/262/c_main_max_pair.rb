n = gets.to_i
a = gets.split.map(&:to_i)

s = t = 0

n.times do |i|
  aa = a[i]
  if aa == i + 1
    t += 1
  elsif i + 1 < aa && a[aa - 1] == i + 1
    s += 1
  end
end

p s + t * (t - 1) / 2
