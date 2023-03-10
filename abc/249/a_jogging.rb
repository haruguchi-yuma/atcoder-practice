a, b, c, d, e, f, x = gets.split.map(&:to_i)

def calc(a, b, c, x)
  ((x / (a + c) * a) + [a, x % (a + c)].min) * b
end


if calc(a, b, c, x) > calc(d, e, f, x)
  puts 'Takahashi'
elsif calc(a, b, c, x) < calc(d, e, f, x)
  puts 'Aoki'
else
  puts 'Draw'
end
