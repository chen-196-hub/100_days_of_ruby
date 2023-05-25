


a = <<-EOF
def hello 
 puts 'hello ruby'
end
EOF

def densification str
  array = []
  ary = str.split('')
  ary.each do |i|
    binary = i.ord.to_s(2)
    array << binary
  end
  array.join(' ')
 end

ccc  =  densification a

def analysis arg
  array = []
  arg.each do |i|
   str = i.to_i(2).chr
   array << str
  end
  array.join
 end

# p ccc.class
p analysis ccc.split(' ')


# TODO