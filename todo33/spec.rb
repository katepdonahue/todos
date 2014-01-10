require './match_values'
# Get keys of a hash whose values equal to given arguments.

describe Hash do
  describe "#keys_of" do
 
    it "should return keys of the given value when there's one answer" do
      expect({a: 1, b: 2, c: 3}.keys_of(1)).to eq([:a])
    end

    it "should work when there's two answers" do
      expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1)).to eq([:a, :d])
    end

    it "should work when there's two arguments" do
      expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2)).to eq([:a, :b, :d])
    end

  end
end