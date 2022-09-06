# 愚直に全探索で十分
# 例えばA = 2の場合 0, 1, 2枚の場合があるので(A+1).timesを使うことに注意

A, B, C, X = $<.read.split.map(&:to_i)
cnt = 0

(A+1).times do |a|
  (B+1).times do |b|
    (C+1).times do |c|
      cnt += 1if 500 * a + 100 * b + 50 * c == X
    end
  end
end

puts cnt

# https://atcoder.jp/contests/abc087/tasks/abc087_b
