# WA のコード
n = gets.to_i
s = gets.chomp.chars
q = gets.to_i
h = {}
s.each { h[_1] = _1 }

q.times do
  c, d = gets.chomp.split(' ')
  if h[c] && h.values.include?(c)
    h[c] = d
  end
end

p s.map { h[_1] || _1 }.join


