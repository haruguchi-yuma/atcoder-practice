# B問題は全探索でいける
N = gets.to_i
ans = 1

(2..N).each do |n|
  pow = n * n
  loop do
    break if pow > N
    ans = [ans, pow].max
 	pow *= n
  end
end

puts ans

# https://atcoder.jp/contests/abc097/tasks/abc097_b
