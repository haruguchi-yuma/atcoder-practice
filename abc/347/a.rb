n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
puts a.filter_map { _1 / k if _1 % k == 0}.join(' ')
