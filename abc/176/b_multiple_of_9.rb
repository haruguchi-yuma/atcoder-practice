# 言われた通り各桁を足して9の倍数か判定してると10*2000なのでTLEになる
puts gets.to_i  % 9 == 0 ? 'Yes' : 'No'
