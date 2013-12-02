
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

def sub_char(string, hash)
  word_array = []
  string.split(/(?<=)\b/).each do |word|
    if hash.keys.include? word.downcase
      word_array << hash[word.downcase]
    else
      word_array << word
    end
  end
  word_array.join
end

