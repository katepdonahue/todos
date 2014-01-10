
class Hash
  def keys_of(*args)
    array = []
    self.each do |key, val|
      if args.include? val
        array << key
      end
    end
    array.uniq
  end
end