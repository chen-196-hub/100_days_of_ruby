input_line = gets


test = input_line.chomp.split("")

test.each_slice(3) do |i|
    ary = []
    ary2 = []
    ary3 = []
    i.each do |a|
        case a
        when "0"
            ary << "..."
        when "1"
            ary << "#.."
        when "2"
            ary << "##."
        when "3"
            ary << "###"
        else
            ary << "###"
        end
    end
    puts ary.join
    i.each do |b|
        case b
        when "0"
            ary2 << "..."
        when "1","2","3"
            ary2 << "..."
        when "4"
            ary2 << "#.."
        when "5"
            ary2 << "##."
        when "6"
            ary2 << "###"
        else
            ary2 << "###"
        end
    end
    puts ary2.join
    i.each do |c|
        case c
        when "0"
            ary3 << "..."
        when "1","2","3","4","5","6"
            ary3 << "..."
        when "7"
            ary3 << "#.."
        when "8"
            ary3 << "##."
        when "9"
            ary3 << "###"
        end
    end
    puts ary3.join
end

