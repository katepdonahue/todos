require 'debugger'

class String
  
  def titleize
    title = []
    self.split.each do |word|
      small_word = ["and", "a", "the"]
      if (small_word.include? word) && (self[0] != word)
        title << word.downcase
      else
        title << word.capitalize
      end
    end
    title.join(" ")
  end

end

def jukebox(command)
  if command.downcase == "list"
    list_library
  else
    parse_command(command)
  end
end

def list_artist(artist, album_hash)
   artist_list = "\n---------------\n"
   artist_list += "#{artist}:\n"
   artist_list += "---------------"
   album_hash[:albums].each do |album_name, songs_hash|
     artist_list += "\n#{album_name}:\n\t"
     artist_list += songs_hash[:songs].join("\n\t")
   end
   artist_list
end
 
def list_library
  lib = full_library
  lib.each do |artist, album_hash|
    puts list_artist(artist, album_hash)
  end
  puts
end
 
def parse_command(command)
  parse_artist(command, full_library) || play_song(command, full_library) || not_found(command)
end
 
def parse_artist(command, lib)
  cmd = command.titleize.to_sym
  parsed = false
  if lib.has_key?(cmd)
    puts "#{list_artist(command, lib[cmd])}\n"
    parsed = true
  end
  parsed
end
 
def play_song(command, lib)
  lib.each do |artist, hash|
    hash[:albums].each do |album, album_hash|
      album_hash[:songs].each do |song|
        if song.downcase == command.downcase
          puts "Now Playing: #{artist}: #{album} - #{song}\n\n"
          return true
        end
      end
    end
  end
  false
end
 

 
def not_found(command)
  puts "I did not understand '#{command}'!\n\n"
  true
end