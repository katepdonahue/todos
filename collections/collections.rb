# Collections Practice
 
# 1. sort the following array in ascending order
#   ["blake", "ashley", "scott"]
["blake", "ashley", "scott"].sort
# 2. sort the following array in descending order
#   ["blake", "ashley", "scott"]
["blake", "ashley", "scott"].sort.reverse
# 3. put the following array in reverse order
#   ["blake", "ashley", "scott"]
["blake", "ashley", "scott"].reverse
# 4. grab the second element in the array
#   ["blake", "ashley", "scott"]
["blake", "ashley", "scott"][1]
# 5. print each element of the array to the console
#   ["blake", "ashley", "scott"]
["blake", "ashley", "scott"].each { |x| puts x }
# 6. create a new array in the following order
#   ["blake", "ashley", "scott"] 
#   should transform into
#   ["blake", "scott", "ashley"]
new_array = ["blake", "ashley", "scott"]
new_array[1], new_array[2] = new_array[2], new_array[1]

# 7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
#   ["blake", "ashley", "scott"]
my_hash = {}

3.times do |i|
  values = ["blake", "ashley", "scott"].each { |name| name[2] = "$"}
  my_hash[["blake", "ashley", "scott"][i]] = values[i]
end

# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
#   [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]

compare = { "greater_than_10" => [], "less_than_10" => []}
[100, 1000, 5, 2, 3, 15, 1, 1, 100 ].each do |num|
  if num > 10
    compare["greater_than_10"] << num
  else
    compare["less_than_10"] << num
  end
end

# 9. find all the winners and put them in an array
#   {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
win_lose = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
winner_array = []
win_lose.each do |key, val|
  if val == "winner"
    winner_array << key
  end
end

# 10. add the following arrays
#   [1,2,3] and [5,9,4]
[1,2,3] + [5,9,4]

# 11. find all words that begin with "a" in the following array
#   ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
a_words = []
words = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
words.each do |word|
  if word[0] == "a" then a_words << word
  end
end

# 11. sum all the numbers in the following array
#   [11,4,7,8,9,100,134]
numbers = [11,4,7,8,9,100,134]
sum = 0
numbers.each { |x| sum += x }

# 12. Add an "s" to each word in the array except for the 2nd element in the array?
#   ["hand","feet", "knee", "table"]
stuff = ["hand","feet", "knee", "table"]
4.times do |i|
  next if i == 1
  stuff[i] += "s"
end

# CHALLENGE
 
# word count
 
# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"
 
# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
 
# song library
 
# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
 
# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []