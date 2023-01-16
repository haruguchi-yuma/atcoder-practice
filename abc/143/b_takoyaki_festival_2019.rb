# combinationで2つ選んでそれぞれ掛けて総和を算出する
n, *d = $<.read.split.map(&:to_i)
puts d.combination(2).sum { _1.inject(:*) }
