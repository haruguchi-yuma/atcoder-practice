# Strng#countではA or B or Cの文字数を数えてしまうのでscanメソッド使う
n = gets.to_i
puts gets.scan('ABC').size
