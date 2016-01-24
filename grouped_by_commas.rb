# Finish the solution so that it takes an input 'n' (integer) and returns a string
# that is the decimal representation of the number grouped by commas after every 3 digits.

# Assume: 0 <= n < 1000000000

#        1  ->           "1"
#       10  ->          "10"
#      100  ->         "100"
#     1000  ->       "1,000"
#    10000  ->      "10,000"
#   100000  ->     "100,000"
#  1000000  ->   "1,000,000"
# 35235235  ->  "35,235,235"


def solution(n)
  puts n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
end

#what's happening here:
#12345 is converted to "12345"
#reverse string => "54321"
#scan breaks the string into 1-3 digit array => ["543", "21"]
# then join them with commas => "543,21"
# then reverse "12,345"

#I was tripped up by the {1,3} -- was using {3,} for 3 or more, very tricky!

solution(0)
solution(12)
solution(12345)
solution(999999999)
