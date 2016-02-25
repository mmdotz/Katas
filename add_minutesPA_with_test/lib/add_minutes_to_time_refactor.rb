require 'time'

class TimeChanger

  attr_accessor :time

  def initialize
    @time       = time
  end

  def add_minutes(time, min_to_add)
  end

  def parse_time_string(time)
    Time.parse(time).strftime("%R")
  end

end
