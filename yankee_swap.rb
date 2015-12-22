
puts "Merry Christmas Hall, Dotzenrods and Moniz Families!"
puts "Please wait a moment while we shuffle the names around...."
sleep(2)

def yank_swap
  n = 1
  names = ["Brendan", "Ian", "Chloe", "Joanne", "Steve", "Michelle", "Jay", "Mom", "Dad", "Annika", "Charlie"].shuffle
  names.each do |name|
    puts "#{n}. #{name}"
    n+=1
  end
  puts "Are you happy with the results? y/n"
  answer = gets.chomp
  if answer.downcase == "y"
    puts "Thanks have a fun swap!"
  else
    yank_swap
  end
end

yank_swap




