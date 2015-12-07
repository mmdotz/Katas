# Write a JavaScript program to find count of the most frequent item of an array.

# Assume that input is array of integers.

# Ex.:

# input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]
# ouptut: 5
# Most frequent number in example array is -1. It occures 5 times in input array.

def most_frequent_item_count(collection)
  if collection.empty?
    print "nil"
  else
    new_hash = collection.group_by(&:itself)
  end
  puts new_hash
end

most_frequent_item_count([8])                   # => nil
most_frequent_item_count([])                    # => nil
most_frequent_item_count([3,4,4,4,6,-1,0,5,4])  # => nil
# most frequent item is 4, it appears 4 times


