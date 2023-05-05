# yield

def hoge
  yield(100)
end

puts hoge{|e| e + 1}
#=> 101


def fuga(a)
  yield(a)
end

puts fuga(100){|e| e * 3}
#=> 300


# &block

def piyo(&block)
  block.call(100)
end
puts piyo {|e| e + 1}
#=> 101


def foo(arg, &block)
  block.call(arg)
end

puts foo(3){|x| x * 4}
#=> 12

# Proc

blk = Proc.new {|e| e * 9 }
puts blk.call(5)
#=> 45

plus_100 = proc {|x| x + 100 }
# [1,2,3].map(plus_100)
#=> error

p [1,2,3,4].map(&plus_100)
#=> [101,102,103,104]


