
n, m, *a = $<.read.split.map(&:to_i)
winner = a.first
h = Hash.new(0)

a.each do |i|
  h[i] += 1
  if i != winner
    if h[i] > h[winner]
      puts i
      winner = i
    elsif h[i] < h[winner]
      puts winner
    else
      winner = [i, winner].min
      puts winner
    end
  else
    puts winner
  end
end

__END__
class BinaryHeap
  def initialize(n = 0)
    @node = Array.new(n)
    @count = 0
  end

  def push(v)
    @count += 1
    i = @count
    while i > 1
      parent_i = i / 2
      parent = @node[parent_i]
      break if parent <= v
      @node[i] = parent
      i = parent_i
    end
    @node[i] = v
  end

  def shift
    return unless @count > 0
    result = @node[1]
    current = @node[@count]
    @node[1] = current
    @node[@count] = nil
    @count -= 1

    i = 1
    while
      left_i = i * 2
      right_i = left_i + 1
      break if left_i > @count

      left = @node[left_i]
      right = @node[right_i]

      if right && right < left
        min_i = right_i
        min = right
      else
        min_i = left_i
        min = left
      end

      break if min > current

      swap(i, min_i)
      i = min_i
    end

    return result
  end

  def swap(i, j)
    @node[i], @node[j] = @node[j], @node[i]
  end

  def min
    @node[1]
  end
end

n, m, *a = $<.read.split.map(&:to_i)

h = Hash.new(0)
que = Array.new(m+1) { BinaryHeap.new }
max_cnt = 0


a.each_with_index do |i, j|
  h[i] += 1
  max_cnt = [max_cnt, h[i]].max
  que[h[i]].push(i)
  p que[max_cnt].min
end
