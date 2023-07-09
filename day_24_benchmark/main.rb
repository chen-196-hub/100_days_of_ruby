require 'benchmark'


def fib num
  arr = [0, 1]
  num.times do
    arr << arr[-1] + arr[-2]
  end
  arr[-2]
end


def t_fib(num)
  case num
  when 0, 1
    num
  else
    t_fib(num - 1) + t_fib(num - 2)
  end
end


Benchmark.bm do |x|
  x.report ("fib") { fib(40) }
  x.report ("t_fib") { t_fib(40) }
end

#=>
# user     system      total        real
# fib  0.000007   0.000000   0.000007 (  0.000005)
# t_fib  6.890177   0.092768   6.982945 (  6.983643)