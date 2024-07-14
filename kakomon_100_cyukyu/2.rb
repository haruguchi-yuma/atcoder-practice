require 'prime'

n = gets.to_i
p 1.step(n, 2).count { |num| num.prime_division.map(&:last).map(&:succ).inject(1, :*) == 8 }
