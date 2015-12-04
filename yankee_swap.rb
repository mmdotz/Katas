names = ["Brendan", "Ian", "Chloe", "Joanne", "Steve", "Michelle", "Jay", "Mom", "Dad", "Annika", "Charlie"].shuffle
count_of_names = names.length

n = 1
names.each do |name|
  puts n ". #{name}"
  n+=1
end
