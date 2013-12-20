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

  end

  def keys_ztoa

  end
 
end