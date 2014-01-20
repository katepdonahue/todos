# Separate numbers with a comma each three digits.

require './commas'

describe "#separate_with_comma" do

  it "should change an integer to a string" do
    expect(separate_with_comma(1)).to eq("1") 
  end

  it "should add a comma in the right spot 1,000" do
    expect(separate_with_comma(1000)).to eq("1,000")
  end

  it "should add a coma in the right spot 10,000" do
    expect(separate_with_comma(10000)).to eq("10,000")
  end

end