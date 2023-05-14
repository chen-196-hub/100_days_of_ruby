class C
  @class_instance_var = "何かしらの値"
  def self.class_attr
    p @class_instance_var
  end
end

C.class_attr
#=> "何かしらの値"

