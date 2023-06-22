def pascal level
  ary = [[1], [1,1]]
  if level > 2
    (level - 2).times do |l|
      ary << [1]
      ary[l + 1].each_cons(2) do |a, b|
        ary[l + 2] << a + b
      end
      ary[l + 2] << 1
    end    
  end
  ary[0..level - 1]
  
end



pp pascal 5 
