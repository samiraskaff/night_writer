class Dictionary
  attr_reader :two_by_three_characters

  def initialize
    @two_by_three_characters = {
      "a" => ["0.", "..", ".."],
      "b" => ["0.", "0.", ".."],
      "c" => ["00", "..", ".."],
      "d" => ["00", ".0", ".."],
      "e" => ["0.", ".0", ".."],
      "f" => ["00", "0.", ".."],
      "g" => ["00", "00", ".."],
      "h" => ["0.", "00", ".."],
      "i" => [".0", "0.", ".."],
      "j" => [".0", "00", ".."],
      "k" => ["0.", "..", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "..", "00"],
      "w" => [".0", "00", ".0"],
      "x" => ["00", "..", "00"],
      "y" => ["00", ".0", "00"],
      "z" => ["0.", ".0", "00"],
      "," => ["..", "0.", ".."],
      ";" => ["..", "0.", "0."],
      ":" => ["..", "00", ".."],
      "." => ["..", "00", ".0"],
      "!" => ["..", "00", "0."],
      "?" => ["..", "0.", "00"],
      '"' => ["..", ".0", "00"],
      "'" => ["..", "..", "0."],
      "-" => ["..", "..", "00"]
    }
  end

  def translate(input_string)
    output_array = []
    input_string.split("").each do |character|
      if @two_by_three_characters.keys.include?(character)
        output_array << @two_by_three_characters[character].clone
      end
    end
    output_array
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
