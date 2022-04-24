require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'

RSpec.describe NightWriter do
  let(:nightwriter) {NightWriter.new('spec_message.txt', 'spec_braille.txt')}

  it "exists" do
    expect(nightwriter).to be_a(NightWriter)
  end

  it "prints a message based on user input" do
    allow(nightwriter).to receive(:input_file).and_return("ab")
    expect(nightwriter.creation_message).to eq("Created 'spec_braille.txt' containing 2 characters")
  end

  it "can return the amount of characters from the created file" do
    allow(nightwriter).to receive(:input_file).and_return("ab")
    expect(nightwriter.character_count).to eq(2)
  end

  it "can send create a formatted braille string from input" do
    allow(nightwriter).to receive(:input_file).and_return("ab")
    expect(nightwriter.braille_string).to eq("0.0.\n..0.\n....\n")
  end
  xit "can create braille file from input" do
    expect(nightwriter.write_to_braille).to eq()
  end

end
