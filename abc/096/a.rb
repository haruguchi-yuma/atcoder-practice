require 'date'
a,b=gets.split.map(&:to_i)
p (Date.new(2018, 1, 1)..Date.new(2018, a, b)).count { |d| d.month == d.day }
