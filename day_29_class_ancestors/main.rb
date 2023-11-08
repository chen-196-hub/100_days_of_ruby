module I
end

module P
end

class C
  include I
  prepend P
end

p C.ancestors
#=> [P, C, I, Object, Kernel, BasicObject]