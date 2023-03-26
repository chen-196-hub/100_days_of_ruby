class C
private
  def initialize
  end
end

p C.new.public_methods.include? :initialize
