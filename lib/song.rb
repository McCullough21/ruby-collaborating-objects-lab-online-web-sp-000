class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  if (self.artist.nil?)
    self.artist = Artist.new(name)
  else
    self.artist.name = name
  end
end

def self.new_by_filename(song_file)
  file = song_file.chomp(".mp3").split(" - ")
  song = Song.new(file[1])
  song.artist_name(file[0])
end


end
