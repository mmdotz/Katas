#
# Construct a building which will be a pile of n cubes. The cube
# at the bottom will have a volume of n^3, the cube above will have volume of
# (n-1)^3 and so on until the top which will have a volume of 1^3.
#
# Total volume of building = m. Given m, can you find the number n of cubes
# you will have to build?
#
# The parameter of the function findNb (find_nb, find-nb) will be an integer m and
#  you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if
#  such a n exists or -1 if there is no such n.
# #
# notes:
# if n = 5, then "pile" volume "m" should equal (5)^3 + (5-1)^3 + (4-1)^3 + (3-1)^3 + (2-1)^3
#   m = 125 + 64 + 27 + 8 + 1
#   m = 225
def test_find_volume_m(number_of_cubes)
  array_of_cubed_ns = []                 # => []
  number_of_cubes.downto(1) do |n|       # => 5
    array_of_cubed_ns << n**3            # => [125], [125, 64], [125, 64, 27], [125, 64, 27, 8], [125, 64, 27, 8, 1]
    number_of_cubes-=1                   # => 4, 3, 2, 1, 0
  end                                    # => 5
  m = array_of_cubed_ns.inject(:+)       # => 225
  print m                                # => nil
end

test_find_volume_m(5)  # => nil
# >> 225

# hmm Math.cbrt(x)??

# findNb(1071225) # n = 45
# findNb(91716553919377) # -1
# findNb(90)


def find_number_of_cubes_in_building(m)
  n = 1
  array_of_cubed_ns = [n]
  until array_of_cubed_ns.inject(:+) == m
    array_of_cubed_ns << (n+1)**3
  end
  print n
end







