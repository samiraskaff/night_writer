require "./lib/night_writer"
require "./lib/night_reader"

loop do
  p "enter 'b' to write to braille, 'e' to write to english"
  user_input = $stdin.gets.chomp().downcase
  if    user_input == "b"
    NightWriter.new(ARGV[0], ARGV[1]).write_to_braille
    break
  elsif user_input == "e"
    NightReader.new(ARGV[0], ARGV[1]).write_to_english
    break
  else
    p "please make a valid selection"
    sleep(1)
  end
end
