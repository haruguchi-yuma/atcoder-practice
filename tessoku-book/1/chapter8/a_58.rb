n, q = gets.split.map(&:to_i)

class SegmentTree
  attr_reader :siz
  # 1-indexedで作成している

  def initialize(n)
    @dat = Array.new(300000, 0)
    @siz = 1
    @siz *= 2 while @siz < n
    (1..@siz*2).each {|i| @dat[i] = 0}
  end

  def update(pos, x)
    pos = pos + siz - 1
    @dat[pos] = x

    while (pos /= 2) >= 1
      @dat[pos] = [@dat[pos*2], @dat[pos*2+1]].max
    end
  end

  # uは現在のセル番号
  # [a, b)はせるに対応する半開区間
  # [l, r)は求めたい半開区間
  def query(l, r, a, b, u)
    return -10000000000 if r <= a || b <= l # 一切含まれない
    return @dat[u] if l <= a && b <= r # 完全に含まれる

    mid = (a + b) / 2
    ans_l = query(l, r, a, mid, u*2)
    ans_r = query(l, r, mid, b, u*2+1)

    return [ans_l, ans_r].max
  end
end

sgt = SegmentTree.new(n)

q.times do
  case gets.split.map(&:to_i)
  in [1, pos, x]
    sgt.update(pos, x)
  in [2, l, r]
    puts sgt.query(l, r, 1, sgt.siz + 1, 1)
  end
end
