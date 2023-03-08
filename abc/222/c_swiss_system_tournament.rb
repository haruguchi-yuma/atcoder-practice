# 番号と勝利数の2次元配列で管理する
# 1ラウンドごとにsortする
n, m = gets.split.map(&:to_i)

hands = Array.new(n*2) { gets.chomp.tr('GCP','012').chars.map(&:to_i) }
rank = (0...n*2).map { [_1, 0] }

m.times do |i|
  rank.each_slice(2).each do |a, b|
    case (hands[a[0]][i] - hands[b[0]][i] + 3) % 3
    when 1 then b[1] += 1
    when 2 then a[1] += 1
    end
  end
  rank = rank.sort_by { [-1 * _2, _1] }
end

puts rank.map{ _1.first.succ }
