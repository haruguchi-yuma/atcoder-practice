n,*a=$<.map(&:to_i)
b = a.map.with_index { |aa, i| [i, aa-1]}.to_h

i = 0
cnt = 0
(n+1).times do
  i = b[i]
  cnt += 1
  if i == 1
    puts cnt
    exit
  end
end

p -1
