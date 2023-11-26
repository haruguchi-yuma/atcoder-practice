n, l, r = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.each do |aa|
  p aa.clamp(l, r)
end
