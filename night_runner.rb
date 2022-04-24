require "./lib/night_writer"

NightWriter.new(ARGV[0], ARGV[1]).write_to_braille
