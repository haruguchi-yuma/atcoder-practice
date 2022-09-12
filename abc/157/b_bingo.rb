#備後カードに穴を開ける作業をして、縦・横・斜めでそれぞれビンゴになっているかチェックする
A = Array.new(3) { gets.split.map(&:to_i) }
N, *B = $<.read.split.map(&:to_i)

# 該当番号にtrue, 該当しないものにfalseをつけていく
3.times do |i|
  3.times do |j|
    A[i][j] = B.include?(A[i][j])
  end
end

ans = false
A.each { ans = true if _1.all? } #横のチェック
A[0].zip(*A[1..]).each { ans = true if _1.all? } # 縦のチェック
ans = true if A[0][0] && A[1][1] && A[2][2] # 斜めのチェック↓
ans = true if A[2][0] && A[1][1] & A[0][2]

puts ans ? 'Yes' : 'No'

#　数字を用いると少しビンゴのチェックが簡単になる

A = Array.new(3) { gets.split.map(&:to_i) }
N, *B = $<.read.split.map(&:to_i)

ans = false
a = A.map { _1.map { |n| B.include?(n) ? 1 : 0 }} # ここで1と0に分ける

ans = true if a.any? { _1.sum == 3 }
ans = true if a[0].zip(*a[1..]).any? { _1.sum == 3 }
ans = true if a[0][0] + a[1][1] + a[2][2] == 3
ans = true if a[2][0] + a[1][1] + a[0][2] == 3

puts ans ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc157/custom_test
