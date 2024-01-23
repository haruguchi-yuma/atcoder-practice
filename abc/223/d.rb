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

  # Push new element to the heap.
  def push(item)
    shift_down(0, @heap.push(item).size - 1)
    self
  end

  alias << push
  alias append push

  # Pop the element with the highest priority.
  def pop
    latest = @heap.pop
    return latest if empty?

    ret_item = heap[0]
    heap[0] = latest
    shift_up(0)
    ret_item
  end

  alias shift pop

  # Get the element with the highest priority.
  def get
    @heap[0]
  end

  alias top get
  alias first get

  # Returns true if the heap is empty.
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
      # Move the higher priority child up.
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
to = Array.new(n) { [] }
deg = Array.new(n, 0)

m.times do |i|
  a, b = gets.split.map(&:to_i)
  to[a-1] << b-1
  deg[b-1] += 1
end

pq = PriorityQueue.new { |x, y| x < y }
n.times {|i| pq << i if deg[i] == 0 }

ans = []
while pq.size != 0
  v = pq.shift
  ans << v+1

  to[v].each do |u|
    deg[u] -= 1
    pq << u if deg[u] == 0
  end
end

if ans.size != n
  p -1
else
  puts ans.join(' ')
end


__END__
4 3
2 1
3 4
2 4

