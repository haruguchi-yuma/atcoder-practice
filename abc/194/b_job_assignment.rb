# O(N)の解き方
# A, Bの最小値異なる人だったら A_i, B_jの最大値の時間かかることになる (else節)
# A, Bの最小値が同一人物だったときは場合分けが必要になる
#  A列の最小値がA_i, B列の最小値がB_jとする
# 　　1. 素直に　A_i と B_jとの和
#  2. A_i と B列のB_jを除いた最小値を比べた最大値
#　　 3. A_iを除いたA列の最小値 と B_jを比べた最大値
#  この1〜3の候補のうち最小値が答え

n = gets.to_i
A, B = Array.new(n) { gets.split.map(&:to_i) }.transpose

i = A.index(A.min)
j = B.index(B.min)

ans =
  if i == j
    a, b = A.delete_at(i), B.delete_at(j)
    [ a + b, [a, B.min].max, [A.min, b].max ].min
  else
    ans = [A[i], B[j]].max
  end

puts ans

# O(N^2)の解き方
# 全探索
n = gets.to_i
a, b = Array.new(n) { gets.split.map(&:to_i) }.transpose

result = []

n.times do |i|
  n.times do |j|
    result << (i == j ? a[i] + b[j] : [a[i], b[j]].max)
  end
end

puts result.min
