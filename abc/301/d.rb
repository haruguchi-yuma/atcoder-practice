s = gets.chomp
n = gets.to_i

f = ->(s) {
  s.gsub('?', '0').to_i(2) <= n
}

s.size.times do |i|
  if s[i] == '?'
    s[i] = '1'
    s[i] = '0' if !f[s]
  end
end

p s.to_i(2) <= n ? s.to_i(2) : -1
