n, m = gets.split.map(&:to_i)
INF = 10**9

sum = 0

(m+1).times do |i|
  sum += n.pow(i)
  if sum > INF
    puts 'inf'
    exit
  end
end

p sum
