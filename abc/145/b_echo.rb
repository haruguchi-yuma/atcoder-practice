# 正規表現を使った
_ = gets
puts gets.chomp =~ /^(.*)\1$/ ? 'Yes' : 'No'
