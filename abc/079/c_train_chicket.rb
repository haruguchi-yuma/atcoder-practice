#　文字列をevalで評価、そしてその文字列はそのまま使う
nums = gets.chomp.chars.map(&:to_i)
ops = [:+, :-]

ops.repeated_permutation(3) do |op|
  s = nums.zip(op).join
  if eval(s) == 7
    puts s + '=7'
    exit
  end
end

# https://atcoder.jp/contests/abc079/tasks/abc079_c
