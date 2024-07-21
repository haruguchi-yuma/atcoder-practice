n, t, pi = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

(0..t+1).each do |i|
  if l.map { _1 + i}.count { _1 >= t } >= pi
    puts i
    exit
  end
end
