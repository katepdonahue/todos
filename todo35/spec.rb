# Reimplement your own version of Ruby Array's transpose method
require './transpose'

describe Array "#my_transpose" do
  it "should create new arrays with each set of corresponding indices given two arrays" do
    expect([[1, 2, 3], [:a, :b, :c]].my_transpose).to eq([[1, :a], [2, :b], [3, :c]])
  end
  it "should create new arrays with each set of corresponding indices given three arrays" do
    expect([[1,2], [3,4], [5,6]].transpose).to eq([[1, 3, 5], [2, 4, 6]])
  end
  it "should create new arrays with each set of corresponding indices given an empty array" do
    expect([].transpose).to eq([])
  end
end