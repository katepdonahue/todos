require "./list_maker"

describe Array, "#make_list" do
  it "should return an array of strings in a numbered list" do
    expect([2, 4, 7, 11].make_list).to eq(["1. 2", "2. 4", "3. 7", "4. 11" ])
  end
  it "should return an array of strings in a numbered list" do
    expect([2, 4, 7, 11, nil].make_list).to eq(["1. 2", "2. 4", "3. 7", "4. 11", "5. " ])
  end
end