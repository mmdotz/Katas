#Return the number of vowels in the given string.
#
#attempt 7
def getCount(string)
  vowels = 'aeiou'
  puts string.count(vowels)
end

getCount("Michelle")

#=> ["", "i", "", "", "e", "", "", "e", ""] ???
#desired result is for "Michelle" => ["e","e", "i"].length = 3
#remove empty strings from array
