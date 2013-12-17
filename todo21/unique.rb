# instructions: implement Array.uniq
 
class Array
 
  def uniq
    uniq_array = []
    self.each do |elt|
      uniq_array << elt unless uniq_array.include? elt
    end
    uniq_array
  end
 
end
