class PriorityQueue
  attr_reader :size

  def initialize(&compare)
    @heap = [nil]
    @size = 0

    # 要素の比較方法(デフォルト: min_heap(昇順))
    compare ||= ->(x, y) { x <=> y }
    @comp =
      case compare.arity
      when 1 then ->(x, y) { compare[x] <=> compare[y] }
      when 2 then compare
      else raise ArgumentError
      end
  end

  def <<(obj)
    @heap << obj
    @size += 1

    # 葉から根へ正しい順序に付け替える
    k = @size
    while (k >>= 1) > 0 && update(k); end

    # queue << obj1 << obj2 と連続できるようselfを返す
    self
  end

  def shift
    return nil if empty?
    return @heap.pop.tap { @size -= 1 } if @size == 1

    result = @heap[1]
    @heap[1] = @heap.pop

    # 葉から根へ正しい順序に付け替える
    k = 1
    while (k = update(k)); end

    result.tap { @size -= 1 }
  end

  def first
    @heap[1]  # 要素が無ければnil
  end

  def empty?
    @size == 0
  end

  private

  # 位置kとその子ノードの間で順序を正す
  # 入れ替えたら子のインデックスを、入れ替えなかったらnilを返す
  def update(k)
    l, r = k << 1, k << 1 | 1
    up, left, right = @heap.values_at(k, l, r)
    return nil unless left  # 子が無い

    # 左右の子ノードのうち値が小さいほうが交換候補
    if right && @comp[left, right] > 0
      return nil if @comp[up, right] <= 0

      @heap[k], @heap[r] = right, up
      r
    else
      return nil if @comp[up, left] <= 0

      @heap[k], @heap[l] = left, up
      l
    end
  end
end

n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
pq = PriorityQueue.new
h = a.tally
h.default = 0

(n+1).times do |i|
  if h[i] == 0
    pq << i
  end
end

q.times do
  i, x = gets.split.map(&:to_i)
  s = a[i-1]
  a[i-1] = x

  h[s] -= 1
  h[x] += 1

  if h[s] == 0
    pq << s
  end

  loop do
    min = pq.first
    if h[min] == 0
      p min
      break
    end

    pq.shift
  end
end
