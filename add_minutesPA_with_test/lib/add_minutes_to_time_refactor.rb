require 'time'
require 'pry'

class TimeChanger

  attr_accessor :time, :min_to_add
  @@split_time = ""

  def initialize
    @time       = "1:35 pm"
    @min_to_add = 40
  end

  def add_minutes_to_time_string(time, min_to_add)
    parse_time_string(time) # => for 1:35pm "13:35"
    split_time_string(@time) # => [13, 35]
  end

  # string the methods below
  def parse_time_string(time)
    @time = Time.parse(time).strftime("%R")
  end

  def split_time_string(time)
    @@split_time = time.split(":").map{ |num| num.to_i }
  end

  def add_minutes(time, min_to_add)
    time = @@split_time
    @@split_time[1] = @@split_time[1] + min_to_add
    return @@split_time
  end

  def convert_minutes_greater_than_60
    if @@split_time[1] > 59
      converted_time = [@@split_time[0]+1, @@split_time[1] - 60]
    else
      @@split_time
    end
  end


end
