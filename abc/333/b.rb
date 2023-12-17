s1, s2 = gets.chomp.chars
t1, t2 = gets.chomp.chars

def long?(x, y)
  a = [*'A'..'E']
  d = (a.index(x) - a.index(y)).abs
  d == 2 || d== 3
end

puts long?(s1, s2) == long?(t1, t2) ? 'Yes' : 'No'
