class NightWriter
  attr_reader :output_file, :input_file

  def initialize(input_file, output_file)
    @input_file = input_file
    @output_file = output_file
  end

  def creation_message
    p "Created '#{output_file}' containing #{character_count} characters"
  end

  def character_count
    output_file.length
  end

end

input_file = ARGV[0]
output_file = ARGV[1]

test = NightWriter.new(input_file, output_file)
