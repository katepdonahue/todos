# Instructions:
# Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
test = ['cat', 'dog', 'fish', 'fish']
 
# def count(array)
#   ___
# end
 
test_hash = { 'cat' => 1, 'dog' => 1, 'fish' => 2 }

require './count_array'

describe Array do
  describe "#my_count" do
    it "should return a hash with keys of the elements and values of the amount of times they occur" do
      expect(test.my_count).to eq(test_hash)
    end
  end


end