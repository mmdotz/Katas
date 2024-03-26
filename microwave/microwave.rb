require 'pry'

class Microwave
  SECONDS_IN_ONE_MINUTE = 60

  def initialize(input)
    @input = input
  end

  def timer
    if @input < SECONDS_IN_ONE_MINUTE
      seconds = @input < 10 ? @input.to_s.prepend("0") : @input
      build_time_string("00", seconds)
    else
      convert_input
    end
  end

  def convert_input
    if @input < 100
      build_time_string(minutes, seconds)
    else
      conversions = []
      conversions << build_time_string(minutes, seconds)
      conversions << use_literal_input
      conversions.min
    end
  end

  def minutes
    minutes = (@input/SECONDS_IN_ONE_MINUTE).to_s
    minutes.prepend("0") if minutes.to_i < 10
    minutes
  end

  def seconds
    return "00" if @input % SECONDS_IN_ONE_MINUTE == 0

    # seconds = (@input % SECONDS_IN_ONE_MINUTE).to_s
    # seconds = if seconds < SECONDS_IN_ONE_MINUTE.to_s
    #             seconds.prepend("0") if seconds.to_i < 10
    #           else

    #           end

    # seconds
    seconds = (@input % SECONDS_IN_ONE_MINUTE).to_s
    seconds.prepend("0") if seconds.to_i < 10
    seconds
  end

  def build_time_string(minutes, seconds)
    "#{minutes}:#{seconds}"
  end

  def use_literal_input
    # @input = 101, could be 1:01 (literal) or 1:41 (converted)
    time = ''
    time +=@input.to_s.insert(-3, ":")
    time.prepend("0") if time.size < 5 #1:01"
    time
  end
end
