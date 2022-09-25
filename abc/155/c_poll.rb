# safe_invertを実装して投票数をkey,名前をvalueとして格納

N, *S = $<.read.split

class Hash
  def safe_invert
    inject({}) {|h, (k, v)| (h[v] ||= []) << k ; h}
  end
end

s = S.tally
max = s.values.max

puts s.safe_invert[max].sort

# https://atcoder.jp/contests/abc155/tasks/abc155_c
