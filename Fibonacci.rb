

# Find the sum of all the even-valued terms in the
# Fibonacci sequence which do not exceed four million.
# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with 1
# and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# Find the sum of all the even-valued terms in the
# sequence which do not exceed four million.

# The Fibonacci Sequence is the series of numbers:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
# The next number is found by adding up the two numbers before it.
# The 2 is found by adding the two numbers before it (1+1)


def generate_Fib_seq_sum
  sum = 0
  prev_term = 0
  term = 1
  sequence = []
  while term < 4000000
    sum +=term if (term % 2).zero?
    term, prev_term = prev_term, prev_term + term
    sequence << term
  end
  print sequence
  p "The sum of a #{sequence.count} digit Fibonacci series = #{sum}"
end

generate_Fib_seq_sum
