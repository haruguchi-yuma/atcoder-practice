# injectで2倍にして配列に格納
H, W = gets.split.map(&:to_i)
C = Array.new(H) { gets.chomp.chars }

puts C.inject([]) { |a, b| a << b << b }.map(&:join)

# https://atcoder.jp/contests/abc049/tasks/abc049_b
