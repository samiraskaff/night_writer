require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'
require "./lib/dictionary"

RSpec.describe EnglishDictionary do
  let(:dictionary) {EnglishDictionary.new}

  it "exists" do
    expect(dictionary).to be_a(EnglishDictionary)
  end

  it "has readable attributes" do
    expect(dictionary.two_by_three_characters["a"]).to eq(["0.", "..", ".."])
  end

  it "can translate input" do
    expect(dictionary.translate("ab")).to eq([["0.", "..", ".."], ["0.", "0.", ".."]])
  end

  it "translates line breaks as spaces" do
    expect(dictionary.translate("\n")).to eq([["..", "..", ".."]])
  end

  it "stops translating if there are unknown characters" do
    expect(dictionary.translate("*")).to eq([])
  end

  it "can format translations" do
    expect(dictionary.format_translation(
      [["0.", "..", ".."], ["0.", "0.", ".."]])
    ).to eq("0.0.\n..0.\n....\n")
  end
end
