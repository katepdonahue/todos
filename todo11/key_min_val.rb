require 'debugger'
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(hash)
  int_hash = hash.select { |key, val| val.class == Fixnum }
  smallest = int_hash[int_hash.keys.sample]
  # debugger
  int_hash.each do |key, val|
    if val < smallest
      smallest = val 
    end
  end
  int_hash.key(smallest)
end

# p key_for_min_value({:nisha => 2, :kate => "orange", :gus => 2, :chris => 3})