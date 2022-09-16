# 効率など考えずにひたすら全探索

N = gets.to_i
S = gets.chomp.chars

ans = 0
(N-1).times { ans = [ans, (S[.._1] & S[_1+1..]).size].max }

puts ans

# https://atcoder.jp/contests/abc098/tasks/abc098_b
