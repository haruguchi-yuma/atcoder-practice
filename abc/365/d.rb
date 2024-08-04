n = gets.to_i
s = gets.chomp.chars

dp = Array.new(n + 1) { Array.new(3, 0) }

hand_map = {'R' => 0, 'P' => 1, 'S' => 2}
def win_hand(num) = (num + 1) % 3
def lose_hand(num) = (num - 1) % 3

(1..n).each do |i|
  current_hand = hand_map[s[i - 1]]
  (0..2).each do |j|
    if lose_hand(current_hand)== j
      dp[i][j] = -100
      next
    end

    if win_hand(current_hand) == j
      dp[i][j] = [dp[i][j], dp[i - 1][(j + 1) % 3] + 1].max
      dp[i][j] = [dp[i][j], dp[i - 1][(j + 2) % 3] + 1].max
    else
      dp[i][j] = [dp[i][j], dp[i - 1][(j + 1) % 3]].max
      dp[i][j] = [dp[i][j], dp[i - 1][(j + 2) % 3]].max
    end
  end
end

puts dp[n].max
