n=gets.to_i;p (1..32).map{|i|(2..9).map{|j|i**j}}.flatten.select{|c|n>=c}.max
__END__
x=gets.to_i
ans = []
(1..Integer.sqrt(x)).each do |n|

  if n == 1
    ans << 1
    next
  end

  num = n
  loop do
    num *= n
    break if num > x
    ans << num
  end
end

p ans.max
