require 'prime'

n = gets.to_i
p 1.step(n, 2).count { |num| num.prime_division.map(&:last).map(&:succ).inject(1, :*) == 8 }

__END__
# prime使わず愚直にやる方法
n = gets.to_i

res = (1..n).select(&:odd?).count do |a|
  (1..n).count { |b| a % b == 0 } == 8
end

puts res

