require 'time'

class TimeChanger

  attr_accessor :time

  def initialize
    @time       = time
  end

  def add_minutes(time, min_to_add)
    parse_time_string # => for 1:35pm "13:35"
    split_time_string # => [13, 35]
  end

  def parse_time_string(time)
    Time.parse(time).strftime("%R")
  end

  def split_time_string(time)
    time.split(":").map{ |num| num.to_i }
  end


end

s = TimeChanger.new
print s.split_time_string("9:34 am")
