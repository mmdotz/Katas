# Here's a simple strategy to encode a message: before each letter of the
# message, add a number and series of letters. The number should correspond
# to the number of letters that will precede the message's actual, meaningful letter.
#
# For example, the word "hey" could be coded with "0h2abe1zy". To read the
# message, you would:
#    skip 0, find the 'h'
#    skip 2 ('a' and 'b'), find 'e'
#    skip 1 ('z'), find 'y'
#
# Write a function called "decode", which takes a string in this code format
# and returns the decoded word. You may assume that coded strings are always
# legally encoded with this system.


def decode(str)
  decoded_word = str.chars
  p decoded_word
  new_string = []

  decoded_word.each do |char|

    if char.match(/\d/)
      if char.to_i.zero?
        decoded_word.shift
      else
        decoded_word.shift(char.to_i + 1) # problem child skip 1st index
      end
      p "h: ", decoded_word
    else
      new_string << char
      next
    end
  end
  p "end: ", new_string
end

decode("0h3abce2sty")

# test works:
# decoded_word.each do |char|
#   if char.match(/\d/)
#     if char.to_i.zero?
#       puts "digit is zero"
#     else
#       puts "digit is not zero"
#     end
#     puts char + " is a digit"
#   end
#  end
