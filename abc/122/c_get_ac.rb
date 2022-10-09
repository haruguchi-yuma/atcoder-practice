# 累積和の問題に帰着させる

N, Q  = gets.split.map(&:to_i)
s = gets.chomp
cs = [0] * (N + 1) # 累積和の配列

(1...N).each do |i|
  a = s[i-1..i] == 'AC' ? 1 : 0
  cs[i+1] = cs[i] + a
end

Q.times do
  l, r = gets.split.map(&:to_i)
  puts cs[r] - cs[l]
end

# 単純に数えるだけではTLEになる
# 　以下だめな例

N, Q  = gets.split.map(&:to_i)
s = gets.chomp
lr = Array.new(Q) { gets.split.map(&:to_i) }

puts lr.map { |l, r| s[l-1..r-1].scan(/AC/).size }
