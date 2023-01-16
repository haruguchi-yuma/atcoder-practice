# 正規表現で判断
puts gets.chomp.match?(/^([^L][^R])*[^L]?+$/) ? 'Yes' : 'No'

# 1文字ずつ全探索
flag = true

gets.chomp.chars.each_with_index do
  if _2.even?
    break flag = false if _1 == 'L'
  else
    break flag = false if _1 == 'R'
  end
end

puts flag ? 'Yes' : 'No'

# 一応短縮バージョンもあるけど、、、
puts !gets.chomp.chars.each_with_index.any? { _2.even? ? _1 == 'L' : _1 == 'R' } ? 'Yes' : 'No'
