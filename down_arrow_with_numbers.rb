# Given a number n, make a down arrow shaped pattern.
#
# For example, when n = 5, the output would be:
#
# 123454321
#  1234321
#   12321
#    121
#     1

def get_a_down_arrow_of(v)
  while v >= 1
    1.upto(v-1) { |x| print x  } && v.downto(1) { |x| print x }
    puts "\n"
    v -=1
  end
end

get_a_down_arrow_of(10)
#
# Test.assert_equals(get_a_down_arrow_of(10), "1234567890987654321\n 12345678987654321\n  123456787654321\n   1234567654321\n    12345654321\n     123454321\n      1234321\n       12321\n        121\n         1");
#     Test.assert_equals(get_a_down_arrow_of(0), "", "Should be blank for 0");
#     Test.assert_equals(get_a_down_arrow_of(-5), "", "Should be blank for negative numbers");
