require "./dog_years"

describe "#age_in_years" do
  it "should return the age it is passed" do
    expect(age_in_years(15)).to eq(15)
  end
end

describe "#age_in_days" do
  it "should return the age times 365" do
    expect(age_in_days(10)).to eq(3650)
  end
end

describe "#age_in_dog_years" do
  it "should return the age times 7" do
    expect(age_in_dog_years(7)).to eq(49)
  end
end
