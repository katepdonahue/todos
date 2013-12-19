# To explore the confusion around the results object we get back from queries using the mysql2 gem...
 
# Create an object that behaves like an array but is NOT an array. Define the each, first and indexing methods on it.
 
# I should get the same result if i do
 
# container = []
# [1,2,3].each do |element|
#   container << element + 1
# end
 
# as if i use your class like so...
 
# fakearray = FakeArray.new
# container = []
# fakearray.each do |element|
#   container << element + 1
# end
 
# Note: I've intentionally omitted a step here where you'd have to somehow tell your class that were using an array of 1,2,3

require './fakearray'

describe FakeArray do

  describe "#each" do
    it "should behave like each on Array class" do
      container1 = []
      [1,2,3].each do |element|
        container1 << element + 1
      end
      fakearray = FakeArray.new(1, 2, 3)
      container2 = []
      fakearray.each do |element|
        container2 << element + 1
      end
      expect(container2).to eq(container1)
    end
  end

  describe "#first" do
    it "should return the first element" do
      fakearray = FakeArray.new(1, 2, 3)
      expect(fakearray.first).to eq(1)
    end
  end

end