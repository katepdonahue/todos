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

describe "#tweet_shorten" do
  it "should substitute the correct character for substitutable words" do
    string1 = "Hello to you too and I have two tweets for you four. Be cool at 10. Hello to you too and I have two tweets for you four. Be cool at 10. Be cool at 11 too."
    string2 = "Hello 2 u 2 & I have 2 tweets 4 u 4. b cool @ 10. Hello 2 u 2 & I have 2 tweets 4 u 4. b cool @ 10. b cool @ 11 2."
    expect(tweet_shorten(string1, words)).to eq(string2)
  end
end

# describe "#print_tweets" do
#   it "should return the shortened tweets when given an array of tweets" do
#     array1 = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
#               "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
#               "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]
#     array2 = ["Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!",
#               "OMG u guys, u won't believe how sweet my kitten is. My kitten is like super cuddly & 2 cute 2 b believed right?", "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real.",
#               "GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, so shorten it up u know what I mean? I just can never tell how long 2 keep typing!"]
#     expect(print_tweets(array1, words)).to eq(array2)
#   end
# end

describe "#shorten?" do
  it "should return false if tweet is less than 140 characters" do
    string1 = "Hello to you too and I have two tweets for you four. Be cool at 10."
    expect(shorten?(string1)).to be_false
  end
  it "should return true if tweet is more than 140 characters" do
    string1 = "Hello to you too and I have two tweets for you four. Be cool at 10. Hello to you too and I have two tweets for you four. Be cool at 10. Be cool at 11 too."
    expect(shorten?(string1)).to be_true
  end
end

describe "#truncate" do
  it "should truncate the string at 140 characters if it is longer than that" do
    string1 = "Hello to you too and I have two tweets for you four. Be cool at 10. Hello to you too and I have two tweets for you four. Be cool at 10. Be cool at 11 too."
    string2 = "Hello to you too and I have two tweets for you four. Be cool at 10. Hello to you too and I have two tweets for you four. Be cool at 10. Be c"
    expect(truncate(string1)).to eq(string2)
  end
end