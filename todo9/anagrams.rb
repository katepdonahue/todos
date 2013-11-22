class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(words_array)
    matches = []
    words_array.map do |check_word|
     # #check if name has all the same letters as check_word
     # puts "this is my word: #{word}."
     # puts "this is my word.split: #{word.split(//)}"
     # puts "this is my check word: #{check_word}"
     # puts "this is my check word.split: #{check_word.split(//)}"
      if word.split(//).sort == check_word.split(//).sort 
        matches << check_word
      end
    end
    matches
  end

end

# kate = Anagram.new("kate")
# puts kate.match(["etka", "hello", "take"])