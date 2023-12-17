s = '1'
m = [s] + (1..12).map { s += '1' }
m.map!(&:to_i)

p m.repeated_permutation(3).map(&:sum).uniq.sort[gets.to_i - 1]
