# A palindrome is a string that is written the same forward as it is in reverse. Write a method to return the longest palindrome in a given string
# longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"

require './palindrome'

describe String "#longest_palindrome" do
  it "should return the longest palindrome in a given string" do
    string1 = "afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd"
    expect(string1.longest_palindrome).to eq("dhfdkjfffhhfffjkdfhd")
  end
end