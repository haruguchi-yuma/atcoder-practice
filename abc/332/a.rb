n, s, k = gets.split.map(&:to_i)

ans = n.times.sum do
  gets.split.map(&:to_i).inject(:*)
end

p ans >= s ? ans : ans + k
