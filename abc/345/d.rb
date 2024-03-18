# なんかうまく解けない
n, h, w = gets.split.map(&:to_i)
ab = Array.new(n) { gets.split.map(&:to_i) }


dfs = -> (s, used) {
  si, sj = -1, -1
  p '-' * 10
  puts s.join("\n")
  h.times do |i|
    w.times do |j|
      si, sj = i, j if s[i][j] == '.' && si == -1
    end
  end
  p [si, sj]

  if si == -1
    puts 'Yes'
    # h.times do |i|
    #   p s[i]
    # end
    return true
  end

  n.times do |ri|
    next if used[ri]
    a, b = ab[ri]
    p [a, b]
    2.times do |bi|
      a, b = b, a
      next if si+a>h || sj+b>w

      ok = true
      ns = s.dup

      a.times do |i|
        b.times do |j|
          ok = false if ns[si+i][sj+j] != '.'
          ns[si+i][sj+j] = (1 + ri).to_s
        end
      end

      next if !ok
      used[ri] = true
      return true if dfs[ns, used]
      used[ri] = false
    end
  end

  false
}

unless dfs[Array.new(h) {'.'*w}, Array.new(n, false)]
  puts 'No'
end
