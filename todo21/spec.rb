require './unique'

describe Array, "#uniq" do

  it "should work on integers (return the array with all duplicate values dropped)" do
    array = [1, 1, 2, 3, 7, 5, 7]
    expect(array.uniq).to eq([1, 2, 3, 7, 5])
  end

  it "should work on strings (return the array with all duplicate values dropped)" do
    array = ["hello", "hello", "my", "name", "is", "name"]
    expect(array.uniq).to eq(["hello", "my", "name", "is"])
  end

end