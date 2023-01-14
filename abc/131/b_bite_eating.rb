N, L = gets.split.map(&:to_i)

list = Array.new(N) {|i| i + L }
puts list.sum - list.min_by(&:abs)

