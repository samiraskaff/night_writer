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
end
