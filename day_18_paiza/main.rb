count = gets
ary = []
count.to_i.times do |i| 
   ary << gets
end

ary2 = []
ary.each do |i|
    i.chomp!
    a , b = i[0], i[-1]
    ary2 << [a, b]
end

ary2.each_with_index do |a, i|
    if ary2[i+1]
        return puts("#{a[1]} #{ary2[i+1][0]}")  if (!(a[1] == ary2[i+1][0]))
    end
    puts "Yes" if i == ary2.size - 1
end
