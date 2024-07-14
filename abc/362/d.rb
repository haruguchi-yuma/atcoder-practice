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

n, m = gets.split.map(&:to_i)
v_w = gets.split.map(&:to_i)
g = Array.new(n) { [] }

m.times do
  u, v, b = gets.split.map(&:to_i)
  g[u-1] << [v-1, b]
  g[v-1] << [u-1, b]
end

min_w = Array.new(n, Float::INFINITY)
min_w[0] = v_w[0]

pq = PriorityQueue.new { |x, y| x[0] < y[0] }
pq << [v_w[0], 0]

while (now_w, u = pq.pop)
  next if now_w > min_w[u]

  g[u].each do |v, edge_w|
    new_w = now_w + v_w[v] + edge_w

    next if new_w >= min_w[v]

    min_w[v] = new_w
    pq << [new_w, v]
  end
end

puts min_w[1..] * ' '
