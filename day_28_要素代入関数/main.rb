class Test
  def hoge=(hoge=nil)
    @hoge = hoge
  end

  def value
    @hoge
  end
end

t = Test.new


t.hoge = 1



p t.value

#=> 1