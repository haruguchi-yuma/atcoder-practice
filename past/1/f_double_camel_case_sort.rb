# 添字iはいつも単語の最初の大文字を指すようにする
s = gets.chomp.chars
result = []
i = 0

while i < s.size
  j = i + 1
  while j < s.size && ('a'..'z').include?(s[j])
    j += 1
  end

  result << s[i..j]
  i = j + 1
end

puts result.map(&:join).sort_by{ _1.downcase }.join

# https://atcoder.jp/contests/past201912-open/tasks/past201912_f
