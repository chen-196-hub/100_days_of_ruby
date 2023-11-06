def foo
  p __callee__
end
alias :bar :foo


p bar