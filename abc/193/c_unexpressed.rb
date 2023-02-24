# a ** 2 <= N <=> a <= N ** 0.5
n = gets.to_i
ans = []
(2..Integer.sqrt(n)).each do |a|
  (2..n).each do |b|
    break if a ** b > n
    ans << a ** b
  end
end

puts n - ans.uniq.size
