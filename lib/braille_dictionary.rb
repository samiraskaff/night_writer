class BrailleDictionary
  attr_reader :alphabet, :output_array

  def initialize
    @alphabet = {
      "0....." => "a",
      "0.0..." => "b",
      "00...." => "c",
      "00.0.." => "d",
      "0..0.." => "e",
      "000..." => "f",
      "0000.." => "g",
      "0.00.." => "h",
      ".00..." => "i",
      ".000.." => "j",
      "0...0." => "k",
      "0.0.0." => "l",
      "00..0." => "m",
      "00.00." => "n",
      "0..00." => "o",
      "000.0." => "p",
      "00000." => "q",
      "0.000." => "r",
      ".00.0." => "s",
      ".0000." => "t",
      "0...00" => "u",
      "0.0.00" => "v",
      ".000.0" => "w",
      "00..00" => "x",
      "00.000" => "y",
      "0..000" => "z",
      "......" => " ",
      "..0..." => ",",
      "..0.0." => ";",
      "..00.." => ":",
      "..00.0" => ".",
      "..000." => "!",
      "..0.00" => "?",
      "...000" => '"',
      "....0." => "'",
      "....00" => "-"
    }
    @output_array = []
  end

  def format_by_lines(input_braille_file)
    @lines = input_braille_file.split("\n")
  end

  def format_braille(lines)
    line_array = lines[0..2]
    while line_array.join.length > 1
      character_string = ""
      line_array.each do |line|
        character_string += line[0..1]
        line.slice!(0..1)
      end
      output_array << character_string
    end
    format_braille(lines[3..-1]) if lines.count > 3
    output_array
  end

  def translate(braille_characters)
    braille_characters.map do |character|
      if @alphabet.keys.include?(character)
        @alphabet[character]
      else
        return "Your message contains characters not supported by this program"
      end
    end.join
  end

end
