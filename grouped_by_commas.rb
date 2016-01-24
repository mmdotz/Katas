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
#
# def solution(n)
#   n = n.to_s
#   if n.size > 3 && n.size < 7
#     n = n.insert(-8, ",")
#   elsif n.size > 3
#     n = n.insert(-4, ",")
#   end
#
#   puts n
# end

#try regex next 



def solution(n)
  puts n.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end


solution(0)
solution(12)
solution(12345)
solution(999999999)
