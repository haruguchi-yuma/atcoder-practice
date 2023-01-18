n, *a = $<.read.split.map(&:to_i)
puts a.all? { _1.even? ? _1 % 3 == 0 || _1 % 5 == 0 : true } ? 'APPROVED' : 'DENIED'

# これの方が可読性良い
puts a.select(&:even).all? { _1 % 3 == 0 || _1 % 5 == 0 } ? 'APPROVED' : 'DENIED'
