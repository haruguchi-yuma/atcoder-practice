n, a, b = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  s, d = gets.split
  c = [[d.to_i, a].max, b].min
  s == 'East' ? ans -= c : ans += c
end

puts [['','West ','East '][ans <=> 0],ans.abs]*''
