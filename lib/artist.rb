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
     name = self.new
     @@all << name
   end
   name
end

def save
  @@all << @name
end

end
