n = gets.to_i
ans = gets.split.map(&:to_i).uniq.sort
puts ans.size
puts ans.join(' ')
