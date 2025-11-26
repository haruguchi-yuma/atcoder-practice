q = gets.to_i

def prime?(number)
  return true if number == 1

  (2..Integer.sqrt(number)).none? { |num| number % num == 0 }
end

q.times do
  num = gets.to_i
  puts prime?(num) ? 'Yes' : 'No'
end


__END__
4
17
31
35
49
