#
# There is a sequence of numbers that can be generated from a starting positive integer, n by:
#
# If n is 1 then the sequence ends.
# If n is even then the next n of the sequence = n/2
# If n is odd then the next n of the sequence = (3 * n) + 1
# In any language of your choice, please complete the following 3 tasks:
#
# Task Description:
#
# Create a routine to generate the sequence for a number.
# Use the routine to show that the sequence for the number 27 has 112 elements starting with 27, 82, 41, 124 and ending with 8, 4, 2, 1
# Show the number less than 100,000 which has the longest sequence together with that sequence's length, but don't show the actual sequence!

require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/number_sequence.rb'

class NumberSequenceTest < Minitest::Test

  def test_Sequence_exists
    assert(Sequence)
  end

  def test_returns_count_of_1
    sequence = Sequence.new.sequence_of_numbers(1)
    assert(1, sequence.count)
  end

  def test_for_even_n
    sequence = Sequence.new.sequence_of_numbers(4)
    assert_equal([4, 2, 1], sequence)
  end

  def test_for_odd_n
    sequence = Sequence.new.sequence_of_numbers(3)
    assert_equal([3, 10, 5, 16, 8, 4, 2, 1], sequence)
  end

end
