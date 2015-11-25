#Return the number (count) of vowels in the given string.
#
#attempt 3
def getCount(str)
  string = str.split("")
  vowels = ["a", "e", "i", "o", "u"]
  string.map { |char|
    char.vowels.map { |v|
    puts v.count
  }
}
end

getCount("Michelle")

#try regexp with slice?
