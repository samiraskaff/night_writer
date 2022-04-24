require 'simplecov'
SimpleCov.start

require "rspec"
require "./lib/night_reader"

RSpec.describe NightReader do
  let(:nightreader) {NightWriter.new('spec_braille.txt', 'spec_original.txt')}

  it "exists" do
    expect(nightreader).to be_a(NightReader)
  end
  
end
