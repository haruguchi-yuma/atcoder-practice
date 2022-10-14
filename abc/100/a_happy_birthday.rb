# 2数が共に8以下である必要がある
puts gets.split.map(&:to_i).max <= 8 ? 'Yay!' : ':('
