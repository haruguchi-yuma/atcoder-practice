n, *a = $<.read.split.map(&:to_i)

ans = 0
x = 0
a.each do |num|
  x += num
  ans = [ans, -1 * x].max
end

p ans + x
