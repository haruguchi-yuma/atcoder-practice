n = gets.to_i
add = gets.split.map(&:to_i).map.with_index { [_2, _1] }.to_h
q = gets.to_i

add.default = 0
base = 0

q.times do |i|
  case gets.split.map(&:to_i)
  in [1, x]
    base = x
    add = Hash.new(0)
  in [2, i, x]
    add[i-1] += x
  in [3, i]
    p base + add[i-1]
  end
end
