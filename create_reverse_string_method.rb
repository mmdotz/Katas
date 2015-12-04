def reverse(string)
  string = string.chars  #array
  reversed_string = []
  number_of_chars = string.count
  number_of_chars.times do |chars|
    reversed_string << string.pop
    @string = reversed_string.join("")
  end
  puts @string
end

reverse("Michelle")  #returns reversed string separated by char in array
