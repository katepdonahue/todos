require "./fizzbuzz_method.rb"

describe Integer, "#fizzbuzz" do
  
  it "should return 'fizzbuzz' when integer is divisible by 15" do
    expect(75.fizzbuzz).to eq("fizzbuzz")
  end

  it "should return 'fizz' when integer is not divisible by 5 but is divisible by 3" do
    expect(27.fizzbuzz).to eq("fizz")
  end

  it "should return 'buzz' when integer is not divisible by 3 but is by 5" do
    expect(25.fizzbuzz).to eq("buzz")
  end

  it "should return the integer when it is not divisible by 3 or 5" do
    expect(13.fizzbuzz).to eq(13)
  end

  it "should raise an error if method called on a non-integer value" do
    expect {"poop".fizzbuzz}.to raise_error
    expect {[2, 4].fizzbuzz}.to raise_error
    expect {{:sym => value}.fizzbuzz}.to raise_error
  end

end