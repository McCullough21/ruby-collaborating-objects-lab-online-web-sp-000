class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end
def self.new_by_filename(song_file)
  song_file = file.split("-").collect(file[1])
  @name = file[1]
  @artist = file[0]
end


end
