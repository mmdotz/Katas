  def reverse(string)
    string = string.chars  #array
    @reversed_string = []
    number_of_chars = string.count
    number_of_chars.times do |chars|
      @reversed_string << string.pop
      string
    end
    @reversed_string.to_s
  end
#
# string = String.create("Michelle")
# string.reverse
reverse("Michelle")
