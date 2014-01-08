require "debugger"

class String

  def longest_palindrome
    palindromes = []
    (self.size-1).times do |first|
      (first+1..self.size-1).each do |last|
        section = self[first..last]
        palindromes << section.reverse if section == section.reverse
      end
    end
    palindromes.max_by { |palindrome| palindrome.length }
  end

end
 
