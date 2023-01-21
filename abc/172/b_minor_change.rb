puts $<.map { _1.chomp.chars }.transpose.count{ _1 != _2 }
