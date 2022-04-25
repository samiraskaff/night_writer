require 'simplecov'
SimpleCov.start

require "rspec"
require "./lib/night_reader"

RSpec.describe NightReader do
  let(:nightreader) {NightReader.new('spec_braille.txt', 'spec_original.txt')}

  it "exists" do
    expect(nightreader).to be_a(NightReader)
  end

  it "prints a message based on user input" do
    allow(nightreader).to receive(:input_file).and_return("0.0.\n..0.\n....\n")
    expect(nightreader.creation_message).to eq("Created 'spec_original.txt' containing 2 characters")
  end

  it "can return the amount of characters from the created file" do
    allow(nightreader).to receive(:input_file).and_return("0.0.\n..0.\n....\n")
    expect(nightreader.character_count).to eq(2)
  end

  it "can create an english string from braille input" do
    allow(nightreader).to receive(:input_file).and_return("0.0.\n..0.\n....\n")
    expect(nightreader.english_string).to eq("ab")
  end

  it "can create english file from braille input" do
    allow(nightreader).to receive(:input_file).and_return("0.0.\n..0.\n....\n")
    expect(nightreader.write_to_english).to eq("Created 'spec_original.txt' containing 2 characters")
  end
end
