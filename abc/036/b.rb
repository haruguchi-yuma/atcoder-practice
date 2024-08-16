n = gets.to_i
g = Array.new(n) { gets.chomp.chars }
puts g.reverse.transpose.map(&:join)
__END__
ans = Array.new(n) { [nil] * n }

n.times do |i|
  n.times do |j|
    ans[j][n-1-i] = g[i][j]
  end
end

puts ans.map(&:join)

2
xxxoooooooxx
xoxooxxxooxx
