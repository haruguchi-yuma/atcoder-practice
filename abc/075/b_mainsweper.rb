# 8方向を探索するために
# 今いる地点からの差分dx, dyを配列で持っておく
# (dx, dy) = (-1, -1), (-1, 0), (-1, 1)
#           ,( 0, -1),          ( 0, 1)
#           ,( 1, -1), ( 1, 0), ( 1, 1)

H, W = gets.split.map(&:to_i)
S = $<.read.split.map(&:chars)

dx = [-1,  0,  1, -1, 1, -1, 0, 1]
dy = [-1, -1, -1,  0, 0,  1, 1, 1]

# 基本は全探索の2重ループ、その中で8方向の探索を行う
H.times do |i|
  W.times do |j|
    next if S[i][j] == '#'
    cnt = 0

    # 8方向の探索
    8.times do |d|
      ni = i + dx[d]
      nj = j + dy[d]

      #盤面の外に出る場合はスキップ
      next if ni < 0 ||ni >= H || nj < 0 || nj >= W

      cnt += 1 if S[ni][nj] == '#'
    end

    S[i][j] = cnt
  end
end

puts S.map(&:join)
