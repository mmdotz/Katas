#Return the number (count) of vowels in the given string.
#
#attempt 4
def getCount(string)
  string = string.split("")   #=> ['M', 'i', 'c', 'h'...]
  vowels = ["a", "e", "i", "o", "u"]
  count_of_vowels = string & vowels
  puts count_of_vowels.length
end

getCount("Michelle")

#try regexp with slice?
