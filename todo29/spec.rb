require './each_with_object'

describe "even_sum" do
  it "should return return an array containing one reversed string for each string that has an even number of characters." do
    expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
  end
end