# 3重ループをまわしている
# breakすることで少しだけ速度を上げている

S, T = gets.split.map(&:to_i)
cnt = 0

(0..100).each do |i|
  (0..100).each do |j|
    (0..100).each do |k|
      break if i + j + k > S
      cnt += 1 if i + j + k <= S && i * j * k <= T
    end
  end
end

p cnt

# repeated_permutationで回すと遅い
S, T = gets.chomp.split.map(&:to_i)

(0..S).to_a.repeated_permutation(3)
	.count{ _1.sum <= S && _1.inject(:*) <= T }
  .then{ p _1 }

# https://atcoder.jp/contests/abc214/tasks/abc214_b
