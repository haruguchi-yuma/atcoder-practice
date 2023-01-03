# minmaxで[最小値, 最大値]になるので引いてからマイナスつけてる
_, *a = $<.read.split.map(&:to_i)
a.minmax.inject(:-).tap { puts -_1}
