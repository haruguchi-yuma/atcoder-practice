n = gets.to_i
digits = n.digits
r = Array.new(digits.size) { [0] * 10 }

i = 1
power10 =  (1..digits.size+1).map { i.tap{ i *= 10} }

digits.each_with_index do |d, i|

  10.times do |j|
    if j < d
      r[i][j] = (n / power10[i+1]) * power10[i] + power10[i]
    end

    if j == d
      r[i][j] = (n / power10[i+1]) * power10[i] + (n % power10[i] + 1)
    end

    if j > d
      r[i][j] = (n / power10[i+1]) * power10[i]
    end
  end
end

p r.transpose.each.with_index.sum { |ary, i| ary.sum * i }

