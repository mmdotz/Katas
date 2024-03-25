class LogLineParser
  def initialize(line)
    @line = line.split(":")
  end

  def message
    @line[1].strip
  end

  def log_level
    pattern = /[\[\]]/
    @line[0].strip.downcase.gsub(pattern, '')
  end

  def reformat
    message.concat(" (#{log_level})")
  end
end
