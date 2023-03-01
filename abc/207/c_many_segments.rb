# 開区間の時は0.5ずらして考えれば良い
n = gets.to_i

ary = Array.new(n) do
  t, l, r = gets.split.map(&:to_f)
  case t
  when 1 then [l, r]
  when 2 then [l, r - 0.5]
  when 3 then [l + 0.5, r]
  when 4 then [l + 0.5, r - 0.5]
  end
end

puts ary.combination(2).count {|(l1, r1), (l2, r2)| [l1, l2].max <= [r1, r2].min }
