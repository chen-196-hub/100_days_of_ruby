class Laeyer
  def method_missing(method, *arg)
    puts "よびだしました：#{method}(#{arg.join(', ')})"
  end
end

bob = Laeyer.new
bob.test("a", "uru")
#=> よびだしました：test(a, uru)
