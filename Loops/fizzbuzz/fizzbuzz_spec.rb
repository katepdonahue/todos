require "./fizzbuzz_method.rb"

describe "#fizzbuzz" do
  
  it "should return 'fizzbuzz' when integer is divisible by 15" do
    fizzbuzz(15).should eq("fizzbuzz")
  end

  it "should return 'fizz' when integer is not divisible by 5 but is divisible by 3" do
    fizzbuzz(3).should eq("fizz")
  end

  it "should return 'buzz' when integer is not divisible by 3 but is by 5" do
    fizzbuzz(5).should eq("buzz")
  end

  it "should return the integer when it is not divisible by 3 or 5" do
    fizzbuzz(7).should eq(7)
  end
end