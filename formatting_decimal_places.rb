# Each number should be formatted that it is rounded to two decimal places.
# No need to check whether the input is a valid number because
# only valid numbers are used in the tests.

# Example:
# 5.5589 is rounded 5.56
# 3.3424 is rounded 3.34

def two_decimal_places(n)
  puts n.round(2)
  raise NotImplementedError.new "TODO: two_decimal_places"
end


# two_decimal_places(3.56688)
two_decimal_places(173735326.3783732637948948)
