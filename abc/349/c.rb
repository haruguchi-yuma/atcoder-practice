s = gets.chomp.chars
t = gets.chomp.chars
t = t.map(&:downcase)

if t[-1] == 'x'
  now = 0
  s.size.times do |i|
    now += 1 if s[i] == t[now]
  end

  if now == 2
    puts 'Yes'
    exit
  end
end


now = 0
s.size.times do |i|
  now += 1 if s[i] == t[now]
end

puts now == 3 ? 'Yes' : 'No'
