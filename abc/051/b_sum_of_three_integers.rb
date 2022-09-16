# 3重ループ回すとTLEになるのでzは計算する
K, S = gets.split.map(&:to_i)
cnt = 0

(0..K).each do |x|
  (0..K).each do |y|
    z = S - x - y
    if z <= K && z >= 0 # S = x + y + z　になる条件
      cnt += 1
    end
  end
end

puts cnt


# https://atcoder.jp/contests/abc051/tasks/abc051_b
