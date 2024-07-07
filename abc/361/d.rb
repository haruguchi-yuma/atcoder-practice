n = gets.to_i
s = gets.chomp << '..'
t = gets.chomp << '..'


dist = {}
dist[s] = 0
que = []
que << s

while ss = que.shift
  empty_i = ss.index(?.)
  (n+1).times do |i|
    next if ss[i] == '.' || ss[i+1] == '.'
    ns = ss.dup
    ns[i], ns[empty_i] = ns[empty_i], ns[i]
    ns[i+1], ns[empty_i+1] = ns[empty_i+1], ns[i+1]

    next if dist[ns]
    dist[ns] = dist[ss] + 1
    que << ns
  end
end

p dist[t] || -1
