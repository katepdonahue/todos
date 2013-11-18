require "./yahtzee"

describe "#roll_dice" do
  it "should return an array with 5 non-nil elements" do
    expect(roll_dice.compact.length).to eq(5)
  end
  it "should return an array with 5 elements, each a number between 1 and 6 (inclusive)" do
    # this test could pass if array has a nil elt and a two digit elt even though your code would be wrong
    # but with the compact in the test above, we made sure that the array has 5 non- nil elts
    expect(roll_dice.join).to match_regex(/[1-6]{5}/)
  end
end

describe "#win?" do
  it "should return true if all the numbers are the same" do
    expect(win?([5, 5, 5, 5, 5])).to eq(true)
  end
  it "should return false if not all the numbers are the same" do
    expect(win?([5, 5, 8, 5, 5])).to eq(false)
  end
end
