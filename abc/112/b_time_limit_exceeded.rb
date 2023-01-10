# T以内に帰宅できる経路をselectで絞って、その中でコスト最小をmin_byで探している
N, T = gets.split.map(&:to_i)
ans = Array.new(N) { gets.split.map(&:to_i) }.select { _2 <= T }.min_by { _1 }

puts ans.nil? ? 'TLE' : ans.first
