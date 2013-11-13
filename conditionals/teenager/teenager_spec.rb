require './teenager'

describe "#is_a_teenager?" do
  it "returns false if the person is younger than 13" do
    is_a_teenager?(12).should eq(false)
  end

  it "returns false if the person is older than 19 but younger than 30" do
    is_a_teenager?(20).should eq(false)
  end

  it "returns true if the person is between the ages of 13 and 19" do
    is_a_teenager?(15).should eq(true)
  end

  it "says 'No one would ever mistake you for a teenager.' if the person is 30 or over" do
    is_a_teenager?(30).should eq("No one would ever mistake you for a teenager.")
    is_a_teenager?(35).should eq("No one would ever mistake you for a teenager.")
    is_a_teenager?(30).should_not eq(false)
  end
end