# wは最大1000キログラムでみかんの質量は最小1グラムなので1000000回のループ
# よって全探索でいける
A, B, W = gets.split.map(&:to_i)
result = []

(1..1000000).each do |n|
  if A * n <= W * 1000 && B * n >= W * 1000
    result << n
  end
end

puts result.empty? ? 'UNSATISFIABLE' : result.minmax * ' '

# https://atcoder.jp/contests/abc195/tasks/abc195_b
