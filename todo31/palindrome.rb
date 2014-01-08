 
class String

  def longest_palindrome
    palindromes = []
    (self.size).times do |i|
      [(i+1)..(self.size-1)].each do |j|
        section = self[i..j]
        palindromes << section.reverse if section == section.reverse
      end
    end
    # palindromes.sort_by size
    palindromes.last
  end

end
 
