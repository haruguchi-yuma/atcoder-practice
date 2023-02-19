# a * b + c = n , (a, b, c)の組みは正整数なので
# a * b <= n - 1　　となる
# a を全て試すとBが勝手に決まる

n = gets.to_i

(1..n).sum do |a|
  (n - 1) / a
end.tap { p _1 }
