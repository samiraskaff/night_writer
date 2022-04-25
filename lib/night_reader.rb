require "./lib/dictionary"

class NightReader
  attr_reader :output_file, :input_file, :output_file_name, :dictionary

  def initialize(input, output)
    @input_file = File.read(input)
    @output_file_name = output
    @dictionary = BrailleDictionary.new
  end

  def creation_message
    p "Created '#{output_file_name}' containing #{character_count} characters"
  end

  def character_count
    input_file.delete("\n").length / 6
  end

  def english_string
    dictionary.format_translation(dictionary.translate(input_file))
  end

  def write_to_english
    @output_file = File.write(output_file_name, english_string)
    creation_message
  end

end
