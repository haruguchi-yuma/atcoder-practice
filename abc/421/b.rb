x, y = gets.split.map(&:to_i)

@memo = [x, y]

def f(x, y, i)
  @memo[i] = (@memo[i-2] + @memo[i-1]).to_s.chars.reverse.join.to_i
end

(2..9).each do |i|
  f(x, y, i)
end

p @memo[-1]
