# instructions: implement Array.uniq
 
class Array
 
  def uniq
    uniq_array = []
    self.each_with_index do |elt, i|
      uniq_array << elt
      if self.count(elt) > 1
        self[i] = "place holder"
        delete(elt)
      end
    end
    uniq_array
  end
 
end