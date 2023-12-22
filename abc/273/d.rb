# RE になって解けてない！！
h, w, si, sj = gets.split.map(&:to_i)
a = [h, w].max
n = gets.to_i
walls = Array.new(n) { gets.split.map(&:to_i) }

mpR = Array.new(a+1) { [] }
mpL = Array.new(a+1) { [] }
mpD = Array.new(a+1) { [] }
mpU = Array.new(a+1) { [] }

walls.each do |i, j|
  mpR[i] << j
  mpL[i] << -j
  mpD[j] << i
  mpU[j] << -i
end

mpR.map! { _1.empty? ? _1 : _1.sort.uniq << w+1 }
mpL.map! { _1.empty? ? _1 : _1.sort.uniq << 0 }
mpD.map! { _1.empty? ? _1 : _1.sort.uniq << h+1 }
mpU.map! { _1.empty? ? _1 : _1.sort.uniq << 0 }

f = -> (mp, i, j, l, r) {
  return [j+l, r-1].min if mp[i].empty?

  wall = mp[i].bsearch { _1 >= j }
  [j+l, wall-1].min
}

q = gets.to_i
q.times do
  d, l = gets.chomp.split
  l = l.to_i

  sj = f[mpR, si, sj, l, w+1] if d == 'R'
  sj = -1 * f[mpL, si, -sj, l, 0] if d == 'L'
  si = f[mpD, sj, si, l, h+1] if d == 'D'
  si = -1 * f[mpU, sj, -si, l, 0] if d == 'U'

  puts [si, sj] * ' '
end

__END__
5 5 4 4
0
4
L 2
U 3
L 2
R 4
