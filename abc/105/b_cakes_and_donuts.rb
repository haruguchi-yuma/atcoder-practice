# 単純に全探索でやった
# Nは最大100なのでケーキは100/4 = 25回のループ
# ドーナツは100/7 = 14.xxx なので15回のループで設定

n = gets.to_i
flag = false

(0..25).each do |i|
  (0..15).each do |j|
    break flag = true if i * 4 + j * 7 == n
  end
end

puts flag ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc105/tasks/abc105_b
