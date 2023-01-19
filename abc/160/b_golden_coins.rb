n = gets.to_i

puts n / 500 * 1000 + (n % 500) / 5 * 5

# divmodでうまくやる

n = gets.to_i
point = 0

r, n =  n.divmod(500)
point += r * 1000

r, n =  n.divmod(5)
point += r * 5

puts point
