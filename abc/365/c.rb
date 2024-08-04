INF = 1001001001
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ok = 0
ng = INF

is_ok = -> (key) {
  a.sum { [_1, key].min } <= m
}

while ng - ok > 1
  mid = (ok + ng) / 2
  is_ok[mid] ? ok = mid : ng = mid
end

puts ok + 1 == INF ? 'infinite' : ok
