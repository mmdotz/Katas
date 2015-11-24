#Return the number (count) of vowels in the given string.
#
# def getCount(str)
#   vowels = ["a", "e", "i", "o", "u"]
#       print str.chars.count("a, e, i, o, u")
# end
#
# getCount("Michelle")
#
# #=> 3

#convert string to array then includes?

#attempt 2
def getCount(str)
  string = str.split
  vowels = ["a", "e", "i", "o", "u"]
  print string.include?(vowels)
end

getCount("Michelle")
