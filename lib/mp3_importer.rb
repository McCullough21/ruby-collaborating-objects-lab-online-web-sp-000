class MP3Importer
attr_accessor :Files

def initialize(files)
 @files = Dir.entries(".spec/fixtures/mp3s")
end

def files
  # split_at = ["-", "."]
  #  @files.each do |file|
  #    file.split(Regexp.union(split_at))
  #    artist = file[0]
end





end
