# Instructions:
# Each with object works much like inject. Use each_with_object to return an array containing one reversed string for each string that has an even number of characters.
 
# Code:
def even_sum(arr)
  arr.each_with_object([]) do |elt, new_array| 
    new_array << elt.reverse if elt.size % 2 == 0
  end
end
 
# even_sum(["cat", "dog", "bird", "fish"]) #=> ["drib", "hsif"]