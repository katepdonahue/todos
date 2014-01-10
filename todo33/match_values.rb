
class Hash

  def keys_of(*args)
    array = []
    self.each { |key, val| array << key if args.include? val }
    array.uniq
  end
  
end