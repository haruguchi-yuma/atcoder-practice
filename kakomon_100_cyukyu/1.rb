loop do
  n, x = gets.split.map(&:to_i)
  break if [n, x] == [0, 0]

  res = [*1..n].combination(3).count do |ary|
    ary.sum == x
  end

  puts res
end
