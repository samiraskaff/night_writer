require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'

RSpec.describe NightWriter do
  let(:nightwriter) { NightWriter.new }

  it "exists" do
    expect(nightwriter).to be_a(NightWriter)
  end

  it "prints a message based on user input" do
    allow(nightwriter).to receive(:input_file).and_return('message.txt')
    allow(nightwriter).to receive(:output_file).and_return('output_message.txt')
    expect(nightwriter.start).to eq("Created 'output_message.txt' containing 18 characters")
  end

  it "can return the amount of characters from the created file" do
    allow(nightwriter).to receive(:output_file).and_return('output_message.txt')
    expect(nightwriter.character_count.to eq(18)
  end
end
