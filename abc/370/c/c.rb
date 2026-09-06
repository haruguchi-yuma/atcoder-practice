s = gets.chomp.chars
t = gets.chomp.chars

size = s.size
ans = []
0.upto(size-1) do |i|
  if s[i] > t[i]
    s[i] = t[i]
    ans << s.join
  end
end

(size-1).downto(0) do |i|
  if s[i] < t[i]
    s[i] = t[i]
    ans << s.join
  end
end

puts ans.size
puts ans
