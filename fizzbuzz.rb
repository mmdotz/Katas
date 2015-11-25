#Postwork Fizzbuzz on paper or whiteboard first

def fizzbuzz(max)
  max.times do |n|
    if n % 3.zero?
      print "fizz"
    elsif n % 5.zero?
      print "buzz"
    elsif n % 15.zero?
      print "fizzbuzz"
    else
      print n
    end
  end
end

fizzbuzz(25)
