n = gets.to_i
sum = 0

sum += n - (10 ** 3 - 1)  if n >= 10 ** 3
sum += n - (10 ** 6 - 1)  if n >= 10 ** 6
sum += n - (10 ** 9 - 1)  if n >= 10 ** 9
sum += n - (10 ** 12 - 1) if n >= 10 ** 12
sum += n - (10 ** 15 - 1) if n >= 10 ** 15

p sum
