require "./my_collect_select"

describe Array do
  describe "#my_collect" do
    it "should return an array manipulated by the block" do
      expect([1, 2, 3].my_collect {|element| element + 1}).to eq([2, 3, 4])
    end
  end
end