MOD = 998244353
Q = gets.to_i

que = [1]
ans = 1
digits = 1

Q.times do |i|
  case gets.split.map(&:to_i)
  in [1, x]
    que << x
    digits += 1
    ans = (ans * 10 + x) % MOD
  in [2]
    x = que.shift
    digits -= 1
    ans = (ans - (x*10.pow(digits, MOD))) % MOD
  in [3]
    p ans
  end
end
