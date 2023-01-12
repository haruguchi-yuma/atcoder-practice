n, m, t = gets.split.map(&:to_i)
cafes = Array.new(m) { gets.split.map(&:to_i) }

def check(rest, t, cafes)
  current = 0
  max = rest
  cafes.each do |from, to|
    # カフェまでの道(減る)
    rest -= from - current
    current = from

    return false if rest <= 0 # カフェに着いたら残量チェック

    rest += to - current #カフェにいる間(増える)
    rest = max if rest > max # 残量が最初より大きければ初期値に戻す

    current = to
  end
  rest -= t - current # 最後の道
  rest > 0
end

puts check(n, t, cafes) ? 'Yes' : 'No'


# メソッド化しない場合はこんな感じ
n, m, t = gets.split.map(&:to_i)
cafes = Array.new(m) { gets.split.map(&:to_i) }
current = 0
ans = 'Yes'
Max = n

cafes.each do |from, to|
  n -= from - current
  current = from
  break ans = 'No' if n <= 0
  n = [n + (to - current), Max].min
  current = to
end


n -= t - to
ans =  n <= 0 ? 'No' : 'Yes'

puts ans
