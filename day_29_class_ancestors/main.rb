module I
end

module P
end

module M
end

class C
  include I, M
  prepend P
end

p C.ancestors
#=> [P, C, I, M, Object, Kernel, BasicObject]