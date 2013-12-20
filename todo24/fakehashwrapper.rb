class FakeHash
  attr_accessor :hash
 
  def initialize(hash)
    @hash = hash
  end

  def [](key)
    hash[key]
  end

  def []=(key, value)
    hash[key] = value
  end

  def a_values
    a = []
    hash.each {|k, v| a << v if k[0] == "a"}
    a
  end

  def keys_ztoa

  end
 
end