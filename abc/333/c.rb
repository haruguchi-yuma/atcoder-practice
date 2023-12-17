s = '1'

m = ['1'] + (1..20).map { s += '1' }
p m.repeated_permutation(3).to_a.map { _1.map(&:to_i).sum }.sort.uniq[gets.to_i - 1]

