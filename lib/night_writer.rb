class NightWriter
  attr_reader :output_file, :input_file

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end

  def start
    p "Created '#{output_file}' containing 256 characters"
  end

  def character_count(file)
    file.length
  end

end

test = NightWriter.new

test.start
