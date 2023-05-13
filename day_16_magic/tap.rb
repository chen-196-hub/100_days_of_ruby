

["a","b","c"].map(&:upcase).shift.tap{|x|puts x}.+("a").tap{|y| puts y}

#=>A
#=>Aa
