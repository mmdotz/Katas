#Fizzbuzz answer for interview 12/10

def fizzbuzz(max)
  1.upto(max) do |n|
    if (n % 15).zero?
      puts "fizzbuzz"
    elsif (n % 5).zero?
      puts "buzz"
    elsif (n % 3).zero?
      puts "fizz"
    else
      puts n
    end
  end
end

fizzbuzz(55)

#write a Ruby script that will check if the first letter of string is Uppercase from range A-Z

def match_case(string)
  puts /^[A-Z]/.match(string)
end

match_case("Michelle")
match_case("dOtz")
