require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'

RSpec.describe NightWriter do
  let(:nightwriter) {NightWriter.new('spec_message.txt', 'output_message.txt')}

  it "exists" do
    expect(nightwriter).to be_a(NightWriter)
  end

  xit "prints a message based on user input" do
    expect(nightwriter.creation_message).to eq("Created 'output_message.txt' containing 23 characters")
  end

  xit "can return the amount of characters from the created file" do
    expect(nightwriter.character_count).to eq(23)
  end

  xit "can convert english to braille" do
    expect(nightwriter.to_braille).to eq()
  end
end
