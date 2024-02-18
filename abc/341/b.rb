n = gets.to_i
a = gets.split.map(&:to_i)

(n-1).times do |i|
  s, t = gets.split.map(&:to_i)
  ai = a[i]
  a[i+1] += (ai / s) * t
end
p a[-1]
