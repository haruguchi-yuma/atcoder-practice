class PriorityQueue
  def initialize(array = [], &comp)
    @heap = array
    @comp = comp || proc { |x, y| x > y }
    heapify
  end

  def self.[](*array, &comp)
    new(array, &comp)
  end

  attr_reader :heap
  alias to_a heap

  def push(item)
    shift_down(0, @heap.push(item).size - 1)
    self
  end

  alias << push
  alias append push

  def pop
    latest = @heap.pop
    return latest if empty?

    ret_item = heap[0]
    heap[0] = latest
    shift_up(0)
    ret_item
  end

  alias shift pop

  def get
    @heap[0]
  end

  alias top get
  alias first get

  def empty?
    @heap.empty?
  end

  def size
    @heap.size
  end

  def to_s
    "<#{self.class}: @heap:(#{heap.join(', ')}), @comp:<#{@comp.class} #{@comp.source_location.join(':')}>>"
  end

  private

  def heapify
    (@heap.size / 2 - 1).downto(0) { |i| shift_up(i) }
  end

  def shift_up(pos)
    end_pos = @heap.size
    start_pos = pos
    new_item = @heap[pos]
    left_child_pos = 2 * pos + 1

    while left_child_pos < end_pos
      right_child_pos = left_child_pos + 1
      if right_child_pos < end_pos && @comp.call(@heap[right_child_pos], @heap[left_child_pos])
        left_child_pos = right_child_pos
      end
      @heap[pos] = @heap[left_child_pos]
      pos = left_child_pos
      left_child_pos = 2 * pos + 1
    end
    @heap[pos] = new_item
    shift_down(start_pos, pos)
  end

  def shift_down(star_pos, pos)
    new_item = @heap[pos]
    while pos > star_pos
      parent_pos = (pos - 1) >> 1
      parent = @heap[parent_pos]
      break if @comp.call(parent, new_item)

      @heap[pos] = parent
      pos = parent_pos
    end
    @heap[pos] = new_item
  end
end

# ノードをグラフに追加
def add_edge(graph, u, v, cost)
  graph[u] ||= []
  graph[v] ||= []
  graph[u] << [v, cost]
  graph[v] << [u, cost]
end

# ダイクストラ法を用いて最短経路を求める
def dijkstra(graph, start, n)
  dist = Array.new(n + 1, Float::INFINITY)
  dist[start] = 0
  pq = PriorityQueue.new([]) { |x, y| x[0] < y[0] }
  pq.push([0, start])

  until pq.empty?
    current_dist, current = pq.pop
    next if current_dist > dist[current]

    graph[current]&.each do |neighbor, weight|
      new_dist = current_dist + weight
      if new_dist < dist[neighbor]
        dist[neighbor] = new_dist
        pq.push([new_dist, neighbor])
      end
    end
  end

  dist
end

# 入力の受け取り
n, m = gets.split.map(&:to_i)
graph = {}
m.times do
  u, v, t = gets.split.map(&:to_i)
  add_edge(graph, u, v, t)
end

q = gets.to_i
queries = []

q.times do
  k, *bridges = gets.split.map(&:to_i)
  queries << bridges
end

# クエリごとに最短経路を計算
queries.each do |bridges|
  sub_graph = {}
  bridges.each do |bridge|
    u, v, t = bridge
    add_edge(sub_graph, u, v, t)
  end

  start_island = 1
  end_island = n
  dist = dijkstra(sub_graph, start_island, n)
  result = dist[end_island]
  puts result == Float::INFINITY ? -1 : result
end
