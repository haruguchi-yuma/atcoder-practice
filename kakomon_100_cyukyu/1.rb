while (n, x = gets.split.map(&:to_i))
  break if [n, x] == [0, 0]
  ans = [*1..n].combination(3).sum do |nums|
    nums.sum == x ? 1 : 0
  end

  puts ans
end
