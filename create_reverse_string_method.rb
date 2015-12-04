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

reverse("Michelle")
reverse("I love code")

#refactored, no not working
# def reverse2(string)
#   string.downto(0) { |n| print n }
# end

# reverse2("Jayson")

def reverse3(string)
  new_string = ""
  (string.length-1).downto(0) do |n|
    new_string += string[n]
  end
  puts new_string
end

reverse3("Annika")
