#Postwork Fizzbuzz on paper or whiteboard first

def fizzbuzz(max)
  max.times do |n|
    if n % 15 == 0
      puts "fizzbuzz"
    elsif n % 5 == 0
      puts "buzz"
    elsif n % 3 == 0
      puts "fizz"
    else
      puts n
    end
  end
end

fizzbuzz(124)
