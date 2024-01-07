n, q = gets.split.map(&:to_i)

points = Array.new(n) { |i| [i+1, 0] }

q.times do
  case gets.chomp.split
  in ['1', d]
    now = points[0]
    if d == 'U'
      points.unshift([now[0], now[1] + 1])
    elsif d == 'D'
      points.unshift([now[0], now[1] - 1])
    elsif d == 'R'
      points.unshift([now[0] + 1, now[1]])
    elsif d == 'L'
      points.unshift([now[0] - 1, now[1]])
    end
    points.pop
  in ['2', i]
    puts points[i.to_i-1].join(' ')
  end
end


__END__
5 9
2 3
1 U
2 3
1 R
1 D
2 3
1 L
2 1
2 5

