n = gets.to_i
s = Array.new(n) { gets.chomp }

ans = []
s.permutation(2) do |s1, s2|
  ans << (s1 + s2)
end

p ans.uniq.size
