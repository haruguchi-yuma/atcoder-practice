point = 0
frames = [[2, 3], [10, 0], [2, 4]]

frames.each_with_index do |frame, i|
  puts '-' * 30
  p "#{i+1}フレーム目"
  p "iの値: #{i}"
  p "frame: #{frame}"
  p "frame[i+1](次のフレーム): #{frame[i+1].inspect}"
end
