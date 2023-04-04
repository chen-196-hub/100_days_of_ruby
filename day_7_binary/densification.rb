# str = "LGTM"
str = "SEIKAI"

def densification str
 array = []
 ary = str.split('')
 ary.each do |i|
   binary = i.ord.to_s(2)
   array << binary
 end
 puts array.join(' ')
end

densification str
