n = gets.to_i

if n == 1
  puts 0
  exit
end

n -= 1

(1..).each do |d|
  num = 9 * 10 ** ((d - 1 ) / 2)
  if n > num
    n -= num
    next
  end

  s = 10 ** (((d + 1) / 2) - 1)
  s += n - 1
  s = s.to_s

  rs = s.reverse
  s[-1] = '' if d.odd?
  return puts s << rs
end
