#Return the number of vowels in the given string.
#
#attempt 7
def getCount(string)
  puts string.scan(/a*e*i*o*u*/).length
end

getCount("Michelle")

#try regexp with slice?
#tried string = string.split ==> ["Michelle"] but need each char as string ==> string.chars!
#desired result is for "Michelle" => ["e","e", "i"].length = 3
