# 'a'..'z'で全探索 最小の個数を探す
N = gets.to_i
S = $<.read.split.map{ _1.chars.tally }
ans = ''

('a'..'z').each do |c|
  ans += c * S.map { _1[c] || 0 }.min
end

puts ans

# https://atcoder.jp/contests/abc058/tasks/arc071_a
