# 問題ごとにacとwaの数を数える配列を用意しておく
n, m = gets.split.map(&:to_i)
ac = [0] * n
wa = [0] * n

m.times do |i|
  pi, s = gets.chomp.split
  pi = pi.to_i - 1
  if s == 'AC'
    ac[pi] = 1 #acは何回出ても1カウント
  else
    wa[pi] += 1 if ac[pi] == 0 # acが既に出てる場合はその後のWAはカウントしない
  end
end

ans = [0] * 2
n.times do |i|
  ans[0] += ac[i]
  ans[1] += wa[i] if ac[i] == 1 # 全部WAの時はカウントしない
end

puts ans * ' '
