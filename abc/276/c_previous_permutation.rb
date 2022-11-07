n, *pe = $<.read.split.map(&:to_i)

st = []
cv = 0

loop do
  cv = pe.pop
  st << cv
  break if st.min < cv
end

# cvの次に小さい数を探す(削除)
a = *st.delete(st.select { cv - _1 > 0}.max)
puts (pe + a + st.sort.reverse).join(' ')

# https://atcoder.jp/contests/abc276/tasks/abc276_c
