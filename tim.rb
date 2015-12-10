class Tim
  attr_accessor :name1, :name2
  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
  end
end
a = Tim.new("james", "thomas")
puts a.name1
