class NightWriter
  attr_reader :output_file, :input_file, :output_file_name

  def initialize(input, output)
    @input_file = File.read(input)
    @output_file_name = output
  end

  def creation_message
    p "Created '#{output_file_name}' containing #{character_count} characters"
  end

  def character_count
    input_file.length
  end

  def to_braille
    @output_file = File.write(output, input_file.reverse)
  end

end

# ifile = ARGV[0]
# ofile = ARGV[1]
#
# test = NightWriter.new(input_file, output_file)
# test.creation_message
