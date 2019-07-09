class Artist
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @songs = []
end
def add_song(song)
  song = Song.new()
  song.artist = self
  @songs << song
end

def self.find_or_create_by_name(name)
   if !@@all.include?(name)
     name = self.new
     @@all << name
   end
end

def save
  @@all << self
end

end
