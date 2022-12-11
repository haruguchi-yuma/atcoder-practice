# 愚直にやった　あまり使ってやるともう少し簡単にできそう
v, *abc = gets.split.map(&:to_i)
f = %i(F M T)
i = 0

loop do
  v -= abc[i]
  break i if v < 0
  i = (i + 1) % 3
end

puts f[i]
