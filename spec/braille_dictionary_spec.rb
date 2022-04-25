require 'simplecov'
SimpleCov.start

require "rspec"
require "./lib/braille_dictionary"
require "./lib/night_reader"

RSpec.describe BrailleDictionary do
  let(:dictionary) {BrailleDictionary.new}

  it "exists" do
    expect(dictionary).to be_a(BrailleDictionary)
  end

  it "has readable attributes" do
    expect(dictionary.alphabet["0....."]).to eq("a")
  end

  it "can format braille characters" do
    expect(dictionary.format_braille("0.0.\n..0.\n....\n")).to eq(["0.....", "0.0..."])
  end
end
