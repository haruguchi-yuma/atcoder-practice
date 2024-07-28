# TLEしますよコレ
N, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

def check(a, b, k, wj)
  l = b - wj
  r = b + wj

  li = a.bsearch_index { |x| x >= l } || N
  ri = a.bsearch_index { |x| x > r } || N

  return ri - li >= k
end

q.times do |i|
  wa = -1
  ac = 2*10**8
  b, k = gets.split.map(&:to_i)

  while wa+1<ac
    wj = (wa + ac) / 2
    check(a, b, k, wj) ? ac = wj : wa = wj
  end

  puts ac
end
