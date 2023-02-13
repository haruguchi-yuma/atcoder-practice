# gcd使えばいいんだけど、実装してしまった
a, b = gets.split.map(&:to_i)

def gojyoho(a, b)
  return a if b == 0
  gojyoho(b, a % b)
end

puts  a * b / gojyoho(a, b)
