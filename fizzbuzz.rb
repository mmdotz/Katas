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
sleep(3)

def fizzbuzz(max)
  puts "Alt Fizzbuzz"
  1.upto(max).each do |n|
    line = ''
    line << 'Fizz' if n % 3 == 0
    line << 'Buzz' if n % 5 == 0
    line = n if line.empty?
    p line
  end
end

fizzbuzz(78)
