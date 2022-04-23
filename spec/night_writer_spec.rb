require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'

RSpec.describe NightWriter do
  let(:nightwriter) { NightWriter.new }

  it "exists" do
    expect(nightwriter).to be_a(NightWriter)
  end

  it "prints a message" do
    expect(nightwriter.start).to eq("Created 'braille.txt' containing 256 characters")
  end
end
