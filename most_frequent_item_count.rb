# Write a program to find count of the most frequent item of an array.

# Assume that input is array of integers.

# Ex.:

# input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
# ouptut: 5
# Most frequent number in example array is -1. It occures 5 times in input array.


#not passing codewars
def most_frequent_item_count(collection)
  if collection.empty?
    puts "nil"
  else
    most_frequent = collection.group_by(&:itself).values.max_by(&:size)
    puts most_frequent.count
  end
end

#passing, not using itself
def most_frequent_item_count(collection)
  if collection.empty?                                                 # => false, true, false, false
    return 0                                                           # => 0
  else
    most_frequent = collection.group_by{|c| c }.values.max_by(&:size)  # => [8], [-3, -3], [0]
    return most_frequent.count                                         # => 1, 2, 1
  end
end


most_frequent_item_count([8])                                               # => 1
most_frequent_item_count([])                                                # => 0
most_frequent_item_count([ -11,-1,1,9,-3,-15,-6,-7,-3,13,4,5,10,13,-9,-7])  # => 2
most_frequent_item_count([0])                                               # => 1
# most frequent item is 4, it appears 4 times

