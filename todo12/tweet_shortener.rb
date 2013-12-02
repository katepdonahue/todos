
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

def tweet_shorten(string, hash)
  word_array = []
  string.split(/(?<=)\b/).each do |word|
    if shorten?(string) && (hash.keys.include? word.downcase)
      word_array << hash[word.downcase]
    else
      word_array << word
    end
  end
  word_array.join
end

def print_tweets(array, hash)
  array.map do |tweet|
    sub_char(tweet, hash)
  end
end

def shorten?(string)
  if string.scan(/./).count > 140
    true
  else
    false
  end
end

def truncate(abbr_string)
  if shorten?(abbr_string)
    abbr_string.split("")[0..139].join
  else
    abbr_string
  end
end