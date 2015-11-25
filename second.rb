# Description:

# Define a new instance method on the Array class called second,
# which returns the second item in an array (similar to the way .first
# and .last work in Ruby).

# If there is no element with index 1 in the array, return nil in Ruby
class Array

  def second
    if self.length >= 2
      puts self[1]
    else
      nil
    end
  end

end




ary = Array.new
ary = [1]
ary.second

ary = nil #=> nilclass error
ary = [1] #=> nothing
ary = [3,4,5] #=> 4
