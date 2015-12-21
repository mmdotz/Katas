# You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z.
# Let x be any string in the first array and y be any string in the second array.

# Find max(abs(length(x) − length(y)))

# If a1 or a2 are empty return -1


# a2 = []
# a1 = []


a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
# mxdiflg(a1, a2) --> 13

def mxdiflg(a1, a2)
  if a1.empty? || a2.empty?
    puts -1  # change to return for codewars
  else
    first_ary = a1.map do |string|
      string.size
    end
    sec_ary = a2.map do |string|
      string.size
    end
    first = first_ary.sort.uniq
    second = sec_ary.sort.uniq
    reply = [first].zip([second]) {|a,b| print (a - b).abs} #there are nils that need to be removed
    print reply.max
  end
end


mxdiflg(a1, a2)
