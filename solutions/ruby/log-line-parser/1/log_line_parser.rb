class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    str = @line.split(':')[0]
    str[1, str.size-2].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
