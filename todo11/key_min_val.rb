# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
  smallest = hash[hash.keys.sample]
  hash.each do |key, val|
      smallest = val if val < smallest
  end
  hash.key(smallest)
end