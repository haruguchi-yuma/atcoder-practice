T = 1<<20
a = Array.new(T, -1)
q = gets.to_i
nex = Array.new(T) {|i| i.succ % T}

q.times do
  case gets.split.map(&:to_i)
  in [1, x]
    h = x % T
    res = []
    while a[h] != -1
      res << h
      h = nex[h]
    end
    # パスの更新
    res.each do |i|
      nex[i] = h + 1
    end
    a[h] = x
  in [2, x]
    p a[x % T]
  end
end


__END__
7
1 1048577
1 1
1 1048577
1 1048577
2 2097153
2 3
2 4

