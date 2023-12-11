h, w = gets.split.map(&:to_i)
a = Array.new(h) { gets.split.map(&:to_i) }
b = Array.new(h) { gets.split.map(&:to_i) }

que = []
dist = {}

push = -> (s, d) {
  return if dist[s]
  dist[s] = d
  que << s
}

push[a, 0]

while s = que.shift
  d = dist[s]
  (h-1).times do |i|
    ns = s.dup
    ns[i], ns[i+1] = ns[i+1], ns[i]

    push[ns, d+1]
  end

  (w-1).times do |j|
    ns = s.dup.transpose
    ns[j], ns[j+1] = ns[j+1], ns[j]

    push[ns.transpose, d+1]
  end
end

p dist[b] || -1
