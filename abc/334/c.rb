n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)


d = []
dr = []
(k-1).times.each { |i|
  i % 2 == 0 ? d << a[i+1] - a[i] : dr << a[i+1] - a[i]
}

i = 0
s = [i] + d.map{ i += _1 }

i = 0
sr = [i] + dr.reverse.map { i += _1 }

j = s.size

if k % 2 == 1
  p j.times.map { |i|
    s[i] + sr[j-i-1]
  }.min || 0
else
  p s[j-1]
end
