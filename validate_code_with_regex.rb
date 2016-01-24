# Basic regex tasks. Write a function that takes in a numeric code of any length.
# The function will check if the code begins with 1, 2, or 3 and return true if so.
# Return false otherwise.
#
# You can assume the input will always be a number.


def validate_code(n)
  #starts with regex [1-3]
  n = n.to_s
  if /^[1-3]/.match(n)
    puts true
  else
    puts false
  end
end



validate_code(123)
validate_code(248)
validate_code(8) #=> false
validate_code(321) # => true
validate_code(9453) # => false
