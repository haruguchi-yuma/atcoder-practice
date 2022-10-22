# kこ選択することが全てに及ぶまでの回数を数える
n, k , *a = $<.read.split.map(&:to_i)

i = 1

while n > k * i - (i - 1)
  i += 1
end

puts i

# https://atcoder.jp/contests/abc101/tasks/arc099_a
