# 基本全探索 permutationバージョン O(N^2)
n, *nn = $<.read.split.map(&:to_i)
sorted_nums = nn.sort
flag = (sorted_nums == nn)

[*0..n-1].permutation(2).each do |i, j|
  nums = nn.dup
  nums[i], nums[j] = nums[j], nums[i]
  break flag = true if sorted_nums == nums
end

puts flag ? 'YES' : 'NO'

# 原始的(でもこっちの方が早そう) O(N^2)
n, *nn = $<.read.split.map(&:to_i)
sorted_nums = nn.sort
flag = (sorted_nums == nn)

(0...n).each do |i|
  (i+1...n).each do |j|
    nums = nn.dup
    nums[i], nums[j] = nums[j], nums[i]
    break flag = true if sorted_nums == nums
  end
end

puts flag ? 'YES' : 'NO'

#　これが計算量O(N)
# pi ≠ iである要素が2個以下ならswapping可能
# 2個なら単純んい入れ変えればいいし、0個なら元から昇順になってる
# 3個以上なら1回のswappingでは入れ替え不可能

n, *nums = $<.read.split.map(&:to_i)
puts nums.each.with_index(1).count { |num, i| num != i } <= 2 ? 'YES' : 'NO'
