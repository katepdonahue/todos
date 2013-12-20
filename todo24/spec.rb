# Let's make an object that behaves like a hash today!
 
# I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
# For example
 
# obj = {:blake => "the best"}
# obj["blake"] #=> "the best"
 
# I'd like to be able to set values in our fake hash.
# I'd like to be able to find all values that have keys beginning with the letter a.
# I'd like to be able to get all the keys in the hash in a descending alphabetized array.

require "./fakehashwrapper"

describe FakeHash do
  
  describe "#[]" do
    it "should return the value of a key if the key is a string" do
      fake = FakeHash.new({"greeting" => "hello"})
      expect(fake["greeting"]).to eq("hello")
    end
    it "should return the value of a key if the key is a symbol" do
      fake = FakeHash.new({:greeting => "hello"})
      expect(fake[:greeting]).to eq("hello")
    end
  end

  describe "#[]=" do
    it "should set the value" do
      fake = FakeHash.new({})
      fake[:name] = "Kate"
      expect(fake[:name]).to eq("Kate")
    end
  end

  describe "#a_values" do
    it "should return an array of values with keys beginning with a" do
      fake = FakeHash.new({:greeting => "Aloha", :afternoon => "Hey",  :farewell => "Aloha", :and => "Bye"})
      expect(fake.a_values).to eq(["Hey", "Bye"])
    end
  end

  describe "#keys_ztoa" do
    it "should return an array of keys sorted z to a" do
      fake = FakeHash.new({:greeting => "Aloha", :afternoon => "Hey", :farewell => "Aloha"})
      expect(fake.keys_ztoa).to eq([:greeting, :farewell, :afternoon])
    end
  end

end