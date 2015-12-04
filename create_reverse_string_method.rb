class String
  def reverse
    self = self.chars  #array
    reversed_string = []
    number_of_chars = self.count
    number_of_chars.times do |char|
      reversed_string << self.pop
    end
  end
end

string = String.create("Michelle")
string.reverse
