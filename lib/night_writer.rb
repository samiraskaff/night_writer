require "./lib/dictionary"

class NightWriter
  attr_reader :output_file, :input_file, :output_file_name, :dictionary

  def initialize(input, output)
    @input_file = File.read(input)
    @output_file_name = output
    @dictionary = Dictionary.new
  end

  def creation_message
    p "Created '#{output_file_name}' containing #{character_count} characters"
  end

  def character_count
    input_file.length
  end

  def write_to_braille
    @output_file = File.write(output, format_translation(dictionary.translate(input_file)))
  end

  def format_translation(input_translation)
    output_string = ""
    input_translation.each do |character_array|
      output_string += character_array[0]
    end
    output_string += "\n"
    input_translation.each do |character_array|
      output_string += character_array[1]
    end
    output_string += "\n"
    input_translation.each do |character_array|
      output_string += character_array[2]
    end
    output_string += "\n"
    output_string
  end
end

# ifile = ARGV[0]
# ofile = ARGV[1]
#
# test = NightWriter.new(input_file, output_file)
# test.creation_message
