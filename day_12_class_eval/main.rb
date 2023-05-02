class A
 @x = 1
 @y = "196"
end

A.class_eval do
  def x
   puts "hello #{@y}"
  end
end

a = A.new

a.x	
