# chunk_whileで連続する同一文字で区切る

N, S = $<.read.split
puts S.chars.chunk_while { _1 == _2 }.count


# 別解
# s[i] != s[j] となっている箇所を数える

N = gets.to_i
S = gets.chomp.chars.each_cons(2)

puts S.count { _1 != _2 } + 1 

# https://atcoder.jp/contests/abc143/tasks/abc143_c
