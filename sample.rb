if $stdin.tty?
  puts "Stdin is a TTY. \n"
else
  puts "Stdin is not a TTY. \n"
end

3.times do |i|
  puts "#{Random.rand}"
  $stderr.puts "#{i+1}回出力しました"
end
