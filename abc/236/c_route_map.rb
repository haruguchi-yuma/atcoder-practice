# hashに詰め込む
n, m = gets.split.map(&:to_i)
s = gets.chomp.split

hash = Hash.new { |h, k| h[k] = true }
t = gets.chomp.split.each { hash[_1] }

s.each_with_index do |eki, i|
  puts hash[eki] ? 'Yes' : 'No'
end
