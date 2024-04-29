s = gets.chomp.chars
n = s.size
h = Hash.new(0)
(1..n).sum do |i|
  n.times { |j| h[s[j, i].join] += 1 }
end

p h.keys.size
