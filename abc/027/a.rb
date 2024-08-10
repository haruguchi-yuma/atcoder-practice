p gets.split.map(&:to_i).inject(:^)
__END__
p gets.split.map(&:to_i).tally.transform_values { _1 % 2 }.select{ |k, v| v > 0 }.keys.first

01
01
10
---
10
