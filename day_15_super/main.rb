class A
  def a
   puts "a"
  end
end


class B < A
  def a
   puts "b"
  end
end

B.new.a
#=> b


class C < A
  def a
    super
  end
end

C.new.a
#=> a

