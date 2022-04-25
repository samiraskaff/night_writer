class EnglishDictionary
  attr_reader :two_by_three_characters, :output_string

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
      "l" => ["0.", "0.", "0."],
      "m" => ["00", "..", "0."],
      "n" => ["00", ".0", "0."],
      "o" => ["0.", ".0", "0."],
      "p" => ["00", "0.", "0."],
      "r" => ["0.", "00", "0."],
      "s" => [".0", "0.", "0."],
      "t" => [".0", "00", "0."],
      "u" => ["0.", "..", "00"],
      "v" => ["0.", "0.", "00"],
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
      "-" => ["..", "..", "00"],
      " " => ["..", "..", ".."]
    }
    @output_string = ""
  end

  def translate(input_string)
    output_array = []
    input_string.split("").each do |character|
      if character == "\n"
        output_array << ["..", "..", ".."]
      elsif @two_by_three_characters.keys.include?(character)
        output_array << @two_by_three_characters[character].clone
      else
        p "Your message contains characters not supported by this program"
        break
      end
    end
    output_array
  end

  def format_translation(input_translation)
    character_array = input_translation[0..39]
    character_array.each do |character|
      @output_string += character[0]
    end
    @output_string += "\n"
    character_array.each do |character|
      @output_string += character[1]
    end
    @output_string += "\n"
    character_array.each do |character|
      @output_string += character[2]
    end
    @output_string += "\n"
    format_translation(input_translation[40..-1]) if input_translation.count > 40
    @output_string
  end

end
