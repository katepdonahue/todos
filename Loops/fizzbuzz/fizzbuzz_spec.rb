require "./fizzbuzz_method.rb"

describe "#fizzbuzz" do
  
  it "should return 'fizzbuzz' when integer is divisible by 15" do
    expect(fizzbuzz(75)).to eq("fizzbuzz")
  end

  it "should return 'fizz' when integer is not divisible by 5 but is divisible by 3" do
    expect(fizzbuzz(27)).to eq("fizz")
  end

  it "should return 'buzz' when integer is not divisible by 3 but is by 5" do
    expect(fizzbuzz(25)).to eq("buzz")
  end

  it "should return the integer when it is not divisible by 3 or 5" do
    expect(fizzbuzz(13)).to eq(13)
  end
end