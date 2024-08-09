# $&は正規表現でマッチした文字列
$><<gets.gsub(/(.)\1*/){"#$1#{$&.size}"}
__END__
$><<gets.gsub(/(.)\1*/){[$1,$&.size]*""}
s = gets.chomp.chars
puts s.chunk_while {_1==_2}.map{[_1[0], _1.size]*''}*''

