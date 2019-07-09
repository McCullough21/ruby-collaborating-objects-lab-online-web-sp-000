class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end
def self.new_by_filename(song_file)
  file = song_file.chomp(".mp3").split(" - ")
  song = Song.new(file[1])
  song.artist.name = file[0]
end


end
