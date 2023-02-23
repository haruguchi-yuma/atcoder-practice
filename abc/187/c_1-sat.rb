# ハッシュに詰める、検索が早いので
n = gets.to_i
s = Array.new(n) { gets.chomp }
h = Hash.new(false)

s.each do
  h[_1] = true
end

s.each do |str|
  if h['!' + str]
    puts str
    exit
  end
end

puts 'satisfiable'

# tally使って集計するのもあり
n = gets.to_i
s = Array.new(n) { gets.chomp }
h = s.tally

s.each do |str|
  if h['!' + str] || 0 > 0
    puts str
    exit
  end
end

puts 'satisfiable'
