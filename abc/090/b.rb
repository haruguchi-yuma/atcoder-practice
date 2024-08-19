a,b=gets.split.map(&:to_i)
p (a..b).count { _1.to_s == _1.to_s.reverse }
