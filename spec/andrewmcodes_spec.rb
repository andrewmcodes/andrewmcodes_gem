# frozen_string_literal: true

RSpec.describe Andrewmcodes do
  it "has a version number" do
    expect(Andrewmcodes::VERSION).to_not be_nil
  end

  it "returns the card output" do
    card = Andrewmcodes::Card.call
    expect(card).to_not be_nil
    expect(card).to include("Andrew Mason")
  end
end
