class Artist
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @songs = []
end
# def add_song(song)
#   song = Song.new()
#   song.artist =

def self.find_or_create_by_name(name)
   if !@@all.include?(name)
     @@all << name
   else
     Self.new = name
     @@all << name
   end  
end

def save
  @@all << @name
end

end
