n, ss = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

i = 0
s = [0] + (a*2).map { i += _1 }

t = s[n]
ss %= t

h = {}
s.each { |num| h[num] = true }

s.size.times do |i|
  if h[s[i]-ss]
    puts 'Yes'
    exit
  end
end

puts 'No'
