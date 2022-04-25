require "./lib/night_writer"
require "./lib/night_reader"

# NightWriter.new(ARGV[0], ARGV[1]).write_to_braille
NightReader.new(ARGV[0], ARGV[1]).write_to_english
