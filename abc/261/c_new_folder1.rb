n = gets.to_i
h = Hash.new(0)

n.times do |i|
  s = gets.chomp
  puts h[s] == 0 ? s : "#{s}(#{h[s]})"
  h[s] += 1
end
