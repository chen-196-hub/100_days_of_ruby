require 'io/console'

cols, _ = IO.console.winsize

puts "Terminal width is #{cols} characters."
