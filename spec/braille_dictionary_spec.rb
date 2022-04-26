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

  it "can format a braille file into lines" do
    expect(dictionary.format_by_lines("0.0.\n..0.\n....\n")).to eq(["0.0.", "..0.", "...."])
  end

  it "can format braille characters" do
    lines = dictionary.format_by_lines("0.0.\n..0.\n....\n")
    expect(dictionary.format_braille(lines)).to eq(["0.....", "0.0..."])
  end

  it "can translate an array of braille characters" do
    expect(dictionary.translate(["0.....", "0.0..."])).to eq("ab")
  end

  it "stops translating if there is an unknown character" do
    expect(dictionary.translate(["000000"])).to eq("")
  end
end
