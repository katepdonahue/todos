# Get keys of a hash whose values equal to given arguments.

describe do Hash "#keys_of"
 
# {a: 1, b: 2, c: 3}.keys_of(1) #=> [:a]
# {a: 1, b: 2, c: 3, d: 1}.keys_of(1) #=>  [:a, :d]
# {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2) #=> [:a, :b, :d]