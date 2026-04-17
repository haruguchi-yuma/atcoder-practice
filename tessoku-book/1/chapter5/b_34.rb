n, x, y = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

grundy = []

(0..x+y).each do |i|
  transit = [false] * 3

  transit[grundy[i-x]] = true if i >= x
  transit[grundy[i-y]] = true if i >= y

  if !transit[0]
    grundy[i] = 0
  elsif !transit[1]
    grundy[i] = 1
  else
    grundy[i] = 2
  end
end

puts a.map {|i| grundy[i % (x + y)] }.inject(:^) == 0 ? 'Second' : 'First'

