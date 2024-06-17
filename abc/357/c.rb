n = gets.to_i

def f(n)
  return ['#'] if n == 0

  base = f(n-1)
  l = base.size
  res = Array.new(l*3) { Array.new(l*3) { '.' } }

  3.times do |i|
    3.times do |j|
      next if i == 1 && j == 1

      l.times do |si|
        l.times do |sj|
          res[i * l + si][j * l + sj] = base[si][sj]
        end
      end
    end
  end

  res
end


puts n == 0 ? '#' : f(n).map(&:join)
