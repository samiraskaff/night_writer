require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'

RSpec.describe NightWriter do
  let(:nightwriter) {NightWriter.new('message.txt', 'output_message.txt')}

  it "exists" do
    expect(nightwriter).to be_a(NightWriter)
  end

  it "prints a message based on user input" do
    expect(nightwriter.creation_message).to eq("Created 'output_message.txt' containing 18 characters")
  end

  it "can return the amount of characters from the created file" do
    expect(nightwriter.character_count).to eq(18)
  end
end
