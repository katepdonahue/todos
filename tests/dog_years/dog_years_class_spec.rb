require "./dog_years_class"

dog1 = Dog.new

describe Dog do

  describe "#initialize" do
    it "should be able to have an instance created" do
      expect(Dog.new).not_to be_nil
    end
  end
  
  describe "#attr_reader(age)" do
    it "should have an age value between 1 and 14 (a working attr_reader)" do
      expect(Dog.new.age.to_s).to match_regex(/^[1][0-4]$|^[1-9]$/)
    end
  end

  describe "#age_in_years" do
    it "should return the age it is passed" do
      expect(dog1.age_in_years).to eq(dog1.age)
    end
  end

  describe "#age_in_days" do
    it "should return the age times 365" do
      expect(dog1.age_in_days).to eq(dog1.age * 365)
    end
  end

  describe "#age_in_dog_years" do
    it "should return the age times 7" do
      expect(dog1.age_in_dog_years).to eq(dog1.age * 7)
    end
  end
end