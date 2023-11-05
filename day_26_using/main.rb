module Sloth
  refine String do
    def downcase
      self
    end
  end
end

p "ABC".downcase # => "abc"

using Sloth

p "ABC".downcase # => "ABC"