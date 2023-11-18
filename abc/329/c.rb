n = gets.to_i
s = gets.chomp.chars
h = {}


s.chunk_while{ _1 == _2 }.each do |ary|
  c = ary.first
  if h[c]
    h[c] = [h[c], ary.size].max
  else
    h[c] = ary.size
  end
end

p h.values.sum
