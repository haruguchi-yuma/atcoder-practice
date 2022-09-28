N = gets.to_i
A = gets.split.map{ _1.to_i % 46 }.tally; A.default = 0
B = gets.split.map{ _1.to_i % 46 }.tally; B.default = 0
C = gets.split.map{ _1.to_i % 46 }.tally; C.default = 0

ans = 0
46.times do |i|
  46.times do |j|
    46.times do |k|
      ans += A[i] * B[j] * C[k] if (i + j + k) % 46 == 0
    end
  end
end

puts ans

# https://atcoder.jp/contests/typical90/tasks/typical90_at
