n = gets.to_i
s = Complex(*gets.split.map(&:to_i))
t = Complex(*gets.split.map(&:to_i))
o = (s + t) / 2.0

rad = 2 * Math::PI/n
r = Complex(Math.cos(rad), Math.sin(rad))

ans = o + (s - o) * r
puts ans.rect.join(' ')
