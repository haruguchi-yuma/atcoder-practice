n, M = gets.split.map(&:to_i)
pi = [0] + Array.new(n) { gets.to_i }

ary = [*0..n].repeated_permutation(2).map { |i, j| pi[i] + pi[j] }.uniq!.sort!.reverse!

ans = []
ary.each do |num1|
  next if num1 > M

  target = M - num1
  r = ary.bsearch { |num2| num2 <= target }
  if r.nil?
    ans << num1
  else
    ans << r + num1
  end
end

p ans.max
