t, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = [[0, a[0]]]

(1..t).each do |i|
  _, val = ans[-1]
  ans << [i, a[i]] if (val - a[i]).abs >= x
end

puts ans.map { it.join(' ') }
