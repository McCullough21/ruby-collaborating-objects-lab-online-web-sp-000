class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end
def self.new_by_filename(song_file)
  file = song_file.chomp(".mp3").split(" - ")
  @name = file[1]
  @artist = file[0]
end


end
