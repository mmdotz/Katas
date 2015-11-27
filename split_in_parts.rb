#The aim of this kata is to split a given string into different strings of equal
 # size (note size of strings is passed to the method)

#  String length is always greater than 0
# String has no spaces
# Size is always positive


def split_in_parts (s, part_length)
  s.insert(part_length, " ")
end
