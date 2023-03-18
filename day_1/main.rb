

# yield

def test
  yield
end

test{puts "123123"}

# 同じ
def foo(&proc)
 yield
end


# ==========================


def foo( x )
  yield if block_given?
  return x + 2
end

p foo( 3 )
p foo( 5 ){ p "foo" }
