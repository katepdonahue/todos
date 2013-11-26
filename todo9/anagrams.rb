class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(words_array)
    matches = []
    words_array.map do |check_word|
      if word.split(//).sort == check_word.split(//).sort 
        matches << check_word
      end
    end
    matches
  end
end