require 'time'
require 'pry'

class TimeChanger

  attr_accessor :time, :min_to_add

  def initialize
    @time       = "1:35 pm"
    @min_to_add = 40
  end

  def add_minutes_to_time_string(time, min_to_add)
    parse_time_string(time) # => for 1:35pm "13:35"
    split_time_string(@time) # => [13, 35]
    add_minutes(min_to_add, @split_time)
    convert_minutes_greater_than_60(@split_time)
  end

  # string the methods below
  def parse_time_string(time)
    @time = Time.parse(time).strftime("%R")
  end

  def split_time_string(time)
    @split_time = time.split(":").map{ |num| num.to_i }
  end

  def add_minutes(min_to_add, split_time)
    @split_time = [split_time[0], split_time[1] + @min_to_add]
    return @split_time
  end

  def convert_minutes_greater_than_60(split_time)
    if split_time[1] > 59
      converted_time = [split_time[0]+1, split_time[1] - 60]
    else
      split_time
    end
  end

  # has to return split_time OR converted_time then
  # add colon between, then convert to string
  # use split_time.insert(1, ":") ??
  # %w{"#{split_time}"} => returns escaped string

  def convert_split_time_to_string(split_time)
  end

end

print TimeChanger.new.add_minutes_to_time_string("9:30 am", 40)
print TimeChanger.new.add_minutes_to_time_string("1:35 pm", 40)
