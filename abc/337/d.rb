h, w, K = gets.split.map(&:to_i)
INF = 1001001001
g = Array.new(h) { gets.chomp }

def solve(str)
  s = str.chars
  n = s.size
  return INF if K > n

  i = 0
  t = [i] + s.map{ _1 == 'o' ? 0 : 1 }.map { i += _1 }
  (n-K+1).times.map do |j|
    t[j+K] - t[j]
  end.min
end


ans = []
g.each do |str|
  str.split('x').each do |s|
    ans << solve(s)
  end
end

g.map(&:chars).transpose.each do |str|
  str.join.split('x').each do |s|
    ans << solve(s)
  end
end

if (r = ans.min) == INF
  p -1
else
  p r || -1
end


__END__
4 5 5
xxxxx
xxxxx
xxxxx
xxxxx
