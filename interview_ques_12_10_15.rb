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

#Having a User model and a Sessions controller, when a user_id is set as the
#current_user, create an instance of a new IP address

#I created a model called IpAddress which had a PK, FK for user_id and address
#belongs_to :User
#dependent: :destroy

#upon clicking login, a REQUEST object is created, from which request.ip comes

def log_in_user
  set_ip = IpAddress.create({
    address: request.ip
    user_id: current_user
    })
end
