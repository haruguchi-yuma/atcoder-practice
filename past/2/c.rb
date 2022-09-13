# 難しいことはせずに全探索する
N = gets.to_i
T = $<.map { _1.strip.chars }
dx = [-1, 0, 1]
dy = [ 1, 1, 1]

(0..N-2).reverse_each do |y|
  (0..(N-1)*2).each do |x|
    if T[y][x] == '#'
      # 下3マスのどこかが'X'の場合は'X'に
      T[y][x] = 'X' if T[y+1][x-1..x+1].include?('X') 
    end
  end
end

puts T.map(&:join)

# https://atcoder.jp/contests/past202004-open/tasks/past202004_c?lang=ja
