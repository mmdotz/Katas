#Return the number of vowels in the given string.
#
#attempt 5
def getCount(string)
  string = string.chars
  #split string into sep chars delimited with commas, in array
  vowels = ["a", "e", "i", "o", "u"]
  n = 0
  string.length.times do
    matched = vowels.map do |v|
      v if v == string[n]
      end
      n+=1
      return n
    end
  puts matched
end

getCount("Michelle")

#try regexp with slice?
#tried string = string.split ==> ["Michelle"] but need each char as string ==> string.chars!
#desired result is for "Michelle" => ["e","e", "i"].length = 3
