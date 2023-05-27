


# a = <<-EOF
# def hello 
#  puts 'hello ruby'
# end
# EOF

# def densification str
#   array = []
#   ary = str.split('')
#   ary.each do |i|
#     binary = i.ord.to_s(2)
#     array << binary
#   end
#   array.join(' ')
#  end

# ccc  =  densification a

def analysis arg
  array = []
  arg.each do |i|
   str = i.to_i(2).chr
   array << str
  end
  array.join
 end

test  = "1100100 1100101 1100110 100000 1101000 1100101 1101100 1101100 1101111 100000 1010 100000 1110000 1110101 1110100 1110011 100000 100111 1101000 1100101 1101100 1101100 1101111 100000 1110010 1110101 1100010 1111001 100111 1010 1100101 1101110 1100100 1010"

p eval analysis test.split(' ')
hello