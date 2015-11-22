# Problem Statement
# Create a method named 'sort_string' which accepts a String
# and rearranges all the words in ascending order, by length.
# Assume a single space to separate the words.

# Example: Given a string "Sort words in a sentence", it should return "a in Sort words sentence".


# def sort_string(string)
#   string.split.sort_by(:length)
# end
#
# print sort_string("Sort words in a sentence")


#Michelle's notes:
#convert to array with split, call .sort_by --length-- how? on the array


def sort_string(string)
  string.split.sort_by(&:length)
end

print sort_string("Sort words in a sentence")
