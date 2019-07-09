class Artist
attr_accessor :name
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
   if @@all.include?(name)
     @@all.find(name)
   else
     self.new(name)
   end
end

def save
  @@all << self
end
def self.all
  @@all
end

end
