n,k=$<.map(&:to_i)
ans = 1

n.times do
  ans = [ans+k, ans*2].min
end
p ans
