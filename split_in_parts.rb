#The aim of this kata is to split a given string into different strings of equal
 # size (note size of strings is passed to the method)

#  String length is always greater than 0
# String has no spaces
# Size is always positive

string = "Michelle"
part_length = 3
def split_in_parts (string, part_length)
  new_string = string[0..part_length-1]+"\s"
  print string
  puts new_string
end

split_in_parts("Michelle", 3)



#tried insert " ", 3 but that only adds it after the first 3 chars, iterating adds a space AFTER the first space created
#partition doesn't work
#split and slice don't work
