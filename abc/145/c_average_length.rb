n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

def kyori(a, b)
  x1, y1 = a
  x2, y2 = b
  ((x1 - x2) ** 2 + (y1 - y2) ** 2) ** 0.5
end

ans =
  [*0...n].permutation(n).map do |ary|
    ary.each_cons(2).map do |a, b|
	    kyori(xy[a], xy[b])
    end.sum
  end

p ans.sum / ans.size
