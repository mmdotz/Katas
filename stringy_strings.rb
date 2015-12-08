# write a function stringy that takes a size and returns a string
# of alternating '1s' and '0s'.
# the string should start with a 1.
# a string with size 6 should return :'101010'.
# given size 4 should return : '1010'.
# given size 12 should return : '101010101010'.
# The size will always be positive and will only use whole numbers.

def stringy(size)
 if size.even?
    puts "10" * (size/2)
  else
    puts "?"
  end
  # return string
end

stringy(9)
stringy(10)
