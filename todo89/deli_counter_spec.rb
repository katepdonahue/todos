require "./deli_counter"

new_deli = Deli.new

describe Deli do

  describe "#attr_reader" do
    it "should return @line when you call line" do
      expect(new_deli.line).to eq([])
    end
  end

  describe "#attr_writer" do
    it "should alter @line when you call line(new_line)" do
      expect(new_deli.line=(["1. Kate", "2. Nobody"])).to eq(["1. Kate", "2. Nobody"])
    end
  end

  describe "#take_a_number" do
    it "should take a customer's name, append their number to their name and add them to the line." do
      expect(new_deli.take_a_number("Flicky")).to eq(["1. Kate", "2. Nobody", "3. Flicky"])
    end  
  end

  # describe "#now_serving" do
  # end
end