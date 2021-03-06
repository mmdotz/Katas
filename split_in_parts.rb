#The aim of this kata is to split a given string into different strings of equal
 # size (note size of strings is passed to the method)

#  String length is always greater than 0
# String has no spaces
# Size is always positive

def split_in_parts (string, part_length)
  n = 0                                        # => 0
  @new_string =''                              # => ""
  number_of_loops = (string.length/part_length)+1  # => 4
  number_of_loops.times do                     # => 4
  range = n..n+part_length-1                   # => 0..5, 6..11, 12..17, 18..23
    @new_string +=string[range]+"\s"           # => "Michel ", "Michel le Mon ", "Michel le Mon iz Dot ", "Michel le Mon iz Dot zenrod "
    n +=part_length                            # => 6, 12, 18, 24
  end                                          # => 4
  puts @new_string.rstrip                      # => nil
end

split_in_parts("Michelle Moniz Dotzenrod", 6)  # => nil



#tried insert " ", 3 but that only adds it after the first 3 chars, iterating adds a space AFTER the first space created
#partition doesn't work
#split and slice don't work

# >> Michel le Mon iz Dot zenrod
