class A
  def method_missing(name, *args)
    "ゴーストメソッド"
  end
end


obj = A.new
p obj.to_s
#=> "#<A:0x000000010fe50fa0>"


class B < BasicObject
  def method_missing(name, *args)
    "ゴーストメソッド"
  end
end

blank_slate = B.new
p blank_slate.to_s
#=> "ゴーストメソッド"
p blank_slate.aaa
#=> "ゴーストメソッド"

