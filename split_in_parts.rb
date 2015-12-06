#The aim of this kata is to split a given string into different strings of equal
 # size (note size of strings is passed to the method)

#  String length is always greater than 0
# String has no spaces
# Size is always positive

def split_in_parts (string, part_length)
  n = 0                                            # => 0
  @new_string =''                                  # => ""
  number_of_loops = string.length/part_length      # => 4
  number_of_loops.times do                         # => 4
    @new_string << string[n..part_length-1]+"\s_"  # => "Mi _", "Mi _ _", "Mi _ _ _", "Mi _ _ _ _"
    n +=part_length                                # => 2, 4, 6, 8
  end                                              # => 4
  puts @new_string                                 # => nil
end

split_in_parts("Michelle", 2)  # => nil



#tried insert " ", 3 but that only adds it after the first 3 chars, iterating adds a space AFTER the first space created
#partition doesn't work
#split and slice don't work

# >> Mi _ _ _ _
