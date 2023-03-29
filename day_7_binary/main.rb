word = %w(01001100 01000111 01010100 01001101)

def analysis arg
 array = []
 arg.each do |i|
  str = i.to_i(2).chr
  array << str
 end
 array.join
end
puts analysis word
