require "./key_min_val"
 
describe "#key_for_min_value" do

  it "should return the key of the hash with the smallest value" do
    expect(key_for_min_value({nisha: 2, kate: "orange", gus: 4, chris: 3})).to eq(:nisha)
  end

  it "should return the first smallest key if there is a tie in smallest values" do
    expect(key_for_min_value({nisha: 2, kate: "orange", gus: 2, chris: 3})).to eq(:nisha)
  end

  it "should return nil if an empty hash is passed to it" do
    expect(key_for_min_value({})).to be_nil
  end

end
 
