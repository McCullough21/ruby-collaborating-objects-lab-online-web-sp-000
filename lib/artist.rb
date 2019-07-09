class Artist
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @songs = []
end
def add_song(song)
  song = Song.new(song)
  Self.name = self
  @songs << song if !@songs.include?(song)
end
def songs
  @songs
end
def self.find_or_create_by_name(name)
   if !@@all.include?(name)
     @@all << name
   else
     name
   end
end

def save
  @@all << self
end

end
