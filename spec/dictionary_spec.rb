require 'simplecov'
SimpleCov.start

require "rspec"
require './lib/night_writer'
require "./lib/dictionary"

RSpec.describe Dictionary do
  let(:dictionary) {Dictionary.new}

  it "exists" do
    expect(dictionary).to be_a(Dictionary)
  end

  it "has readable attributes" do
    expect(dictionary.two_by_three_characters["a"]).to eq(["0.", "..", ".."])
  end
end
