word = %w(01001100 01000111 01010100 01001101)
# word = %w(1000011 1001000 1000101 1001110 100000 1100100 1100101 1110011 1110101)

def analysis arg
 array = []
 arg.each do |i|
  str = i.to_i(2).chr
  array << str
 end
 array.join
end
puts analysis word
