n, x, y, *a = $<.read.split.map(&:to_i)

x -= a[0]
xa, ya = [], []
(1...n).each { |i| i % 2 == 1 ? ya << a[i] : xa << a[i] }

f = -> (x, a) {
  set1 = Set.new
  set1 << 0
  a.each do |na|
    set2 = Set.new
    set1.each do |nx|
      set2 << nx + na
      set2 << nx - na
    end
    set1 = set2
  end

  set1.include?(x)
}

puts f[x, xa] && f[y, ya] ? 'Yes' : 'No'

