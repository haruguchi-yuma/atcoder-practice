H, W = gets.split.map(&:to_i)
a = Array.new(H) { gets.chomp.chars }

# スプラット展開でゴリ押し
a = a.map! { ['#', *_1, '#'] }
puts [ ['#'] * (W + 2), *a, ['#'] * (W + 2) ].map(&:join).join("\n")

# 文字列のまま操作。どう考えてもこっちの方がシンプル
H, W = gets.split.map(&:to_i)

puts '#' * (W + 2)
H.times { puts '#' + gets.chomp + '#' }
puts '#' * (W + 2)
