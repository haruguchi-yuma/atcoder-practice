# 賛成の数を数える
n = gets.to_i
puts Array.new(n) { gets.chomp }.count('For') > n / 2 ? 'Yes' : 'No'

# コンテストで出したやつ
n = gets.to_i

cnt = 0
n.times do
  cnt += 1 if gets.chomp == 'For'
end

puts cnt > n / 2 ? 'Yes' : 'No'
