d = gets.to_i
ans = 10**12+1

(1..Integer.sqrt(d)).each do |x|
  y2 = d - x*x
  yy1 = Integer.sqrt(y2)
  yy2 = yy1 + 1

  dist1 = (x*x + yy1*yy1 - d).abs
  dist2 = (x*x + yy2*yy2 - d).abs
  ans = [ans, dist1, dist2].min
end

p ans
