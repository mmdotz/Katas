require 'time'

class TimeChanger

  attr_accessor :time

  def initialize
    @time       = time
  end

  def add_minutes(time, min_to_add)
  end

  def parse_time_string(time) #not going to use this?
    Time.parse(time).strftime("%R")
  end

  def split_time_string(time)
    time.split(":").map{ |num| num.to_i }
  end


end
