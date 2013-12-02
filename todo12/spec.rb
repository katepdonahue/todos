require './tweet_shortener'

words = { 
"to" => "2",
"too" => "2",
"two" => "2",
"for" => "4",
"four" => "4",
"be" => "b",
"you" => "u",
"at" => "@",
"and" => "&"
}

describe "#sub_char" do
  it "should substitute the correct character for substitutable words" do
    string1 = "Hello to you too and I have two tweets for you four. Be cool at 10."
    string2 = "Hello 2 u 2 & I have 2 tweets 4 u 4. b cool @ 10."
    expect(sub_char(string1, words)).to eq(string2)
  end
end

# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"