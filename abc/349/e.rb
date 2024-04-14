# わからず後でやる
a = Array.new(3) { gets.split.map(&:to_i) }
a = Array.new(3) { ['a', 'a', 't']}
kado = [[0, 0], [2, 2], [0, 2], [2, 0]]
# 高橋, 青木の順番
score = [0, 0]

def full?(ary)
  !ary.any? { _1.any? { |n| n.is_a?(Integer) } }
end

now = 0
while !full?(ary)
  if ary[1][1].is_a?(Integer)
    score[now] += ary[0][0]
    next now ^= 1
  end


  max, idx = kado.map.with_index { |i, j, idx|
    ary[i][j].is_a?(String) ? [-1, idx]  : [ary[i][j], idx]
  }.max_by(&:first)

  if max != -1
    i, j = kado[idx]
    score[now] += ary[i][j]
    next now ^= 1
  end


end
