# Integer origin method
class Integer
  def dub
    self*2
  end
end

p 1.dub


class Array
  def my_map(&block)
    ary = []
    self.each do |e|
      ary << block.call(e)
    end
    ary
  end
end

p [1,2,3].my_map{|e| e * 3}
