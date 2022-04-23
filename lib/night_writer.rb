class NightWriter
  attr_reader :output_file_name

  def initialize
    @output_file_name = ARGV[1]
  end

  def start
    p "Created '#{output_file_name}' containing 256 characters"
  end

end

test = NightWriter.new

test.start
