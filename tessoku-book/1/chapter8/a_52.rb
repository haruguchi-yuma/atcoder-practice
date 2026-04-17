q = gets.to_i
que = []

q.times do
  x, name = gets.chomp.split
  if x == '1'
    que << name
  elsif x == '2'
    puts que[0]
  else
    que.shift
  end
end
