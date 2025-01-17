class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  self.artist.add_song(self)
end

def self.new_by_filename(song_file)
  # file = song_file.chomp(".mp3").split(" - ")
  # song = Song.new(file[1])
  # song.artist_name = file[0]
  name = song_file.split(" - ")[1]
  artist = song_file.split(" - ")[0]
  song = self.new(name)
  song.artist_name = artist
  song
end


end
