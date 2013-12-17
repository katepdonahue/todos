# instructions: implement Array.uniq
 
class Array
 
  def uniq
    uniq_array = []
    self.each do |elt|
      uniq_array << elt
      if array.count(elt) > 1
        delete(elt)
      end
    end
  end
 
end