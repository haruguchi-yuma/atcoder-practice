class PriorityQueue
  attr_reader :size

  def initialize(&compare)
    # ヒープ構造を表す配列（インデックス0は不使用）
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

    # ヒープの順序を正す（葉から根へ）
    k = @size
    while (k >>= 1) > 0 && update(k); end

    # queue << obj1 << obj2 と連続できるようselfを返す
    self
  end

  def shift
    return nil if empty?
    return @heap.pop.tap { @size -= 1 } if @size == 1

    # 先頭を抜き取り、末尾を一旦先頭に置く
    result = @heap[1]
    @heap[1] = @heap.pop

    # ヒープの順序を正す（根から葉へ）
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

pq = PriorityQueue.new { |x| -x }

n, d = gets.split.map(&:to_i)
h = Hash.new { |h, k| h[k] = [] }

n.times do
  x, y = gets.split.map(&:to_i)
  h[x] << y
end
ans = 0
d.times do |i|
  h[i+1].each { pq << _1 }
  ans += pq.shift || 0
end

p ans

__END__
5 4
1 1
2 4
2 3
3 4
4 2
