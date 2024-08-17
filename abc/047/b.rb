w, h, n = gets.split.map(&:to_i)

xl, xh = 0, w
yl, yh = 0, h

n.times do
  x, y, a = gets.split.map(&:to_i)

  case a
  when 1 then xl = [x, xl].max
  when 2 then xh = [x, xh].min
  when 3 then yl = [y, yl].max
  when 4 then yh = [y, yh].min
  end
end

p [xh - xl, 0].max * [yh - yl, 0].max

