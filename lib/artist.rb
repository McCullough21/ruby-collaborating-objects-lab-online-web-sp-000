class Artist
attr_accessor :name, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
end
def add_song(song)
  @songs << song if !@songs.include?(song)
end
def songs
  @songs
end
def self.find_or_create_by_name(name)
     self.all.detect {|artist| artist.name == name}
     self.new(name) if self.all.include?(name)
end

def save
  @@all << self
end
def self.all
  @@all
end

end
