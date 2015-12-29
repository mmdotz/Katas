# You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z.
# Let x be any string in the first array and y be any string in the second array.

# Find max(abs(length(x) − length(y)))

# If a1 or a2 are empty return -1


# a2 = []
# a1 = []


a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]

def mxdiflg(a1, a2)
  if a1.empty? || a2.empty?
    puts -1
  else
    first_ary = a1.map do |string|
      string.size
    end
    sec_ary = a2.map do |string|
      string.size
    end

    puts [(first_ary.min - sec_ary.max).abs, (first_ary.max - sec_ary.min).abs].max
  end
end


# mxdiflg(a1, a2)  # 13
# mxdiflg([],[])   # -1
# mxdiflg([],"l")  # -1
# mxdiflg([""], ["pocj", "ajvn", "vkawnaova"])

print "not passing. Expected 10, got: "
mxdiflg(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"],
["bbbaaayddqbbrrrv"])

#first_ary = [11, 8, 11, 10, 26]
# sec_ary = [16]

