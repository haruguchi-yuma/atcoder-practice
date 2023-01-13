# yymmとmmyyそれぞれ別々のフラグをもって判断する

a, b = gets.chomp.chars.each_slice(2).map { _1.join.to_i }
yymm, mmyy = false, false

yymm = true if (1..12) === b
mmyy = true if (1..12) === a

if yymm && mmyy
  puts 'AMBIGUOUS'
elsif yymm
  puts 'YYMM'
elsif mmyy
  puts 'MMYY'
else
  puts 'NA'
end
