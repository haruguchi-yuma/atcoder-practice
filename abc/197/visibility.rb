# 2次元盤面の探索問題

H, W, X, Y = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.chars }

# 上、左、下、右のマス
di = [-1,  0, 1, 0]
dj = [ 0, -1, 0, 1]

ans = 1 #自分自身は最初からカウントしておく

# 4方向にそれぞれ探索
4.times do |t|
  ni, nj = X-1, Y-1
  loop do
    ni += di[t]
    nj += dj[t]
    # 盤面から出る時、壁があるときはbreak
    break if ni < 0 || nj < 0 || ni >= H || nj >= W
    break if S[ni][nj] == '#'
    ans += 1
  end
end

puts ans

# https://atcoder.jp/contests/abc197/tasks/abc197_b
