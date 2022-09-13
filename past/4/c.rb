# 8方向探索なのでひたすらループ回す
N, M = gets.split.map(&:to_i)
S = $<.map{ _1.strip.chars }
# 配列を準日しておく
ary = Array.new(N) { [0] * M }

# 8方向探索用座標
dx = [-1,  0,  1, -1, 0, 1, -1, 0, 1]
dy = [-1, -1, -1,  0, 0, 0,  1, 1, 1]

N.times do |y|
  M.times do |x|
    cnt = 0
    9.times do |t|
      nx = x + dx[t]
      ny = y + dy[t]
      next if nx < 0 || ny < 0 || nx >= M || ny >= N
      cnt += 1 if S[ny][nx] == '#'
    end
    ary[y][x] = cnt
  end
end

puts ary.map(&:join)

# https://atcoder.jp/contests/past202010-open/tasks/past202010_c
