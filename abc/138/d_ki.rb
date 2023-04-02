n, q = gets.split.map(&:to_i)

g = Array.new(n) { [] }

# グラフの形成
(n-1).times do
  a, b = gets.split.map(&:to_i)
  g[a-1] << b - 1
  g[b-1] << a - 1
end

queue = [0]

# 訪問済みリスト
visited = [false] * (n)
visited[0] = true

# 答え
ans = Array.new(n) { 0 }

# 最初に各頂点にカウンターを足す
q.times do
  pe, x = gets.split.map(&:to_i)
  ans[pe-1] += x
end

# 探索(BFS)
while !queue.empty?
  now = queue.shift
  g[now].each do |i| # 現在の頂点now が行けるところ全部探索
    unless visited[i] # 訪問済みでなければ
      ans[i] += ans[now]
      visited[i] = true
      queue << i
    end
  end
end

puts ans
