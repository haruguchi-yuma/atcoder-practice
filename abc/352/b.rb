s = gets.chomp.chars
t = gets.chomp.chars

ans = []
now = 0

t.size.times do |i|
  c = s[now]
  if t[i] == c
    ans << i + 1
    now += 1
  end
end


puts ans.join(' ')
