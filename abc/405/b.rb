n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

n.times do |i|
  if a.uniq.size != m
    puts i
    exit
  end

  a.pop
end

puts n
